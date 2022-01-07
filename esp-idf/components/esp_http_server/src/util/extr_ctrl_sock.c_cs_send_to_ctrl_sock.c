
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int to_addr ;
struct sockaddr_in {int sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;


 int AF_INET ;
 int htons (int) ;
 int inet_aton (char*,int *) ;
 int sendto (int,void*,unsigned int,int ,struct sockaddr*,int) ;

int cs_send_to_ctrl_sock(int send_fd, int port, void *data, unsigned int data_len)
{
    int ret;
    struct sockaddr_in to_addr;
    to_addr.sin_family = AF_INET;
    to_addr.sin_port = htons(port);
    inet_aton("127.0.0.1", &to_addr.sin_addr);
    ret = sendto(send_fd, data, data_len, 0, (struct sockaddr *)&to_addr, sizeof(to_addr));

    if (ret < 0) {
        return -1;
    }
    return ret;
}
