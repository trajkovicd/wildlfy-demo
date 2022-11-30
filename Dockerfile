FROM jboss/wildfly:latest

USER root
ADD ld.so.preload /etc/

USER jboss
ADD HW2.war /opt/jboss/wildfly/standalone/deployments/
ADD WebDemoApp.war /opt/jboss/wildfly/standalone/deployments/

# RUN ./wildfly/bin/standalone.sh &
EXPOSE 8080

