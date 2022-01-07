
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int input; int fifofd; int epfd; } ;
typedef TYPE_1__ GlobalInfo ;


 int EPOLL_CTL_DEL ;
 int epoll_ctl (int ,int ,int ,int *) ;
 int fclose (int ) ;
 int fifo ;
 int unlink (int ) ;

__attribute__((used)) static void clean_fifo(GlobalInfo *g)
{
    epoll_ctl(g->epfd, EPOLL_CTL_DEL, g->fifofd, ((void*)0));
    fclose(g->input);
    unlink(fifo);
}
