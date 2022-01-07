
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_INET ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int htons (int) ;
 int inet_aton (char*,int *) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int socket (int ,int ,int ) ;

int cs_create_ctrl_sock(int port)
{
    int fd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if (fd < 0) {
        return -1;
    }

    int ret;
    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    inet_aton("127.0.0.1", &addr.sin_addr);
    ret = bind(fd, (struct sockaddr *)&addr, sizeof(addr));
    if (ret < 0) {
        close(fd);
        return -1;
    }
    return fd;
}
