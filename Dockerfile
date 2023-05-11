FROM linuxserver/code-server

# Set the root user password
RUN echo "root:Ww12345" | chpasswd

# Give the root user sudo privileges
RUN yum install -y sudo && \
    echo "root ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

CMD ["/bin/bash"]
