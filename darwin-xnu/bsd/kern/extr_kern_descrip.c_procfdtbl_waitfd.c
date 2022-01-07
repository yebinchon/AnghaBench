
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int p_fdmlock; TYPE_1__* p_fd; } ;
struct TYPE_2__ {int * fd_ofileflags; } ;


 int PRIBIO ;
 int UF_RESVWAIT ;
 int msleep (TYPE_1__**,int *,int ,char*,int *) ;

void
procfdtbl_waitfd(struct proc * p, int fd)
{
        p->p_fd->fd_ofileflags[fd] |= UF_RESVWAIT;
 msleep(&p->p_fd, &p->p_fdmlock, PRIBIO, "ftbl_waitfd", ((void*)0));
}
