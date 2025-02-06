FROM docker.io/peeringmanager/peering-manager:latest

# installs huawei routers and switches driver
RUN /opt/peering-manager/venv/bin/pip install napalm-huawei-vrp

ENTRYPOINT [ "/sbin/tini", "--" ]

CMD [ "/opt/peering-manager/docker-entrypoint.sh", "/opt/peering-manager/launch-peering-manager.sh" ]
