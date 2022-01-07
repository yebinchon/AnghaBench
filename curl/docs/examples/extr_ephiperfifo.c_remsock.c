
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int epfd; } ;
struct TYPE_6__ {int sockfd; } ;
typedef TYPE_1__ SockInfo ;
typedef TYPE_2__ GlobalInfo ;


 int EPOLL_CTL_DEL ;
 scalar_t__ epoll_ctl (int ,int ,int,int *) ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 int free (TYPE_1__*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void remsock(SockInfo *f, GlobalInfo* g)
{
  if(f) {
    if(f->sockfd) {
      if(epoll_ctl(g->epfd, EPOLL_CTL_DEL, f->sockfd, ((void*)0)))
        fprintf(stderr, "EPOLL_CTL_DEL failed for fd: %d : %s\n",
                f->sockfd, strerror(errno));
    }
    free(f);
  }
}
