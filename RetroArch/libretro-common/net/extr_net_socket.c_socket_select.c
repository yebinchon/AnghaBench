
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef int fd_set ;
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {int events; TYPE_1__ data; int member_0; } ;
typedef TYPE_2__ SceNetEpollEvent ;


 int SCE_NET_EPOLLHUP ;
 int SCE_NET_EPOLLIN ;
 int SCE_NET_EPOLL_CTL_ADD ;
 int SCE_NET_EPOLL_CTL_DEL ;
 scalar_t__ sceNetEpollControl (int,int ,int,TYPE_2__*) ;
 int sceNetEpollWait (int,TYPE_2__*,int,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int socketselect (int,int *,int *,int *,struct timeval*) ;

int socket_select(int nfds, fd_set *readfs, fd_set *writefds,
      fd_set *errorfds, struct timeval *timeout)
{
   return select(nfds, readfs, writefds, errorfds, timeout);

}
