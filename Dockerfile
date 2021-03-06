FROM openjdk:8-jdk-alpine 
VOLUME /tmp 
COPY /target/microservice-0.0.1-SNAPSHOT.jar /usr/app/ 
WORKDIR /usr/app 
EXPOSE 8200
ENV JAVA_OPTS=""
RUN sh -c "touch microservice-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "microservice-0.0.1-SNAPSHOT.jar" ]

