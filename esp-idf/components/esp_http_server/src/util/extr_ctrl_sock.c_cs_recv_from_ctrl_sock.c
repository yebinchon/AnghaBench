
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int recvfrom (int,void*,unsigned int,int ,int *,int *) ;

int cs_recv_from_ctrl_sock(int fd, void *data, unsigned int data_len)
{
    int ret;
    ret = recvfrom(fd, data, data_len, 0, ((void*)0), ((void*)0));

    if (ret < 0) {
        return -1;
    }
    return ret;
}
