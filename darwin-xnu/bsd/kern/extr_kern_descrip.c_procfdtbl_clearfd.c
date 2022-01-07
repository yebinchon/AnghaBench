
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {TYPE_1__* p_fd; } ;
struct TYPE_2__ {int* fd_ofileflags; int ** fd_ofiles; } ;


 int UF_RESVWAIT ;
 int wakeup (TYPE_1__**) ;

void
procfdtbl_clearfd(struct proc * p, int fd)
{
 int waiting;

 waiting = (p->p_fd->fd_ofileflags[fd] & UF_RESVWAIT);
 p->p_fd->fd_ofiles[fd] = ((void*)0);
 p->p_fd->fd_ofileflags[fd] = 0;
 if ( waiting == UF_RESVWAIT) {
  wakeup(&p->p_fd);
 }
}
