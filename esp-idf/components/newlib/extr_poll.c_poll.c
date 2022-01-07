
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
typedef int nfds_t ;


 int esp_vfs_poll (struct pollfd*,int ,int) ;

int poll(struct pollfd *fds, nfds_t nfds, int timeout)
{
    return esp_vfs_poll(fds, nfds, timeout);
}
