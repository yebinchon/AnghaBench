
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_5__ {int pollFd; } ;
typedef TYPE_1__ HttpThread ;
typedef TYPE_2__ HttpContext ;


 int EPOLL_CTL_DEL ;
 int epoll_ctl (int ,int ,int,int *) ;
 int taosCloseSocket (int) ;

void httpRemoveContextFromEpoll(HttpThread *pThread, HttpContext *pContext) {
  if (pContext->fd >= 0) {
    epoll_ctl(pThread->pollFd, EPOLL_CTL_DEL, pContext->fd, ((void*)0));
    taosCloseSocket(pContext->fd);
    pContext->fd = -1;
  }
}
