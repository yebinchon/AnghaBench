
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
typedef int fd_set ;


 int ESP_LOGD (int ,char*,int,...) ;
 int TAG ;
 int esp_vfs_select (int,int *,int *,int *,struct timeval*) ;
 int log_fd_set (char*,int *) ;
 int lwip_select (int,int *,int *,int *,struct timeval*) ;

int select(int nfds, fd_set *readfds, fd_set *writefds, fd_set *errorfds, struct timeval *timeout)
{
    return esp_vfs_select(nfds, readfds, writefds, errorfds, timeout);

}
