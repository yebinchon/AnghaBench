
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {TYPE_1__* p_fd; } ;
struct fileproc {int dummy; } ;
struct TYPE_2__ {int* fd_ofileflags; struct fileproc** fd_ofiles; } ;


 int UF_RESERVED ;
 int UF_RESVWAIT ;
 int wakeup (TYPE_1__**) ;

void
procfdtbl_releasefd(struct proc * p, int fd, struct fileproc * fp)
{
 if (fp != ((void*)0))
         p->p_fd->fd_ofiles[fd] = fp;
        p->p_fd->fd_ofileflags[fd] &= ~UF_RESERVED;
 if ((p->p_fd->fd_ofileflags[fd] & UF_RESVWAIT) == UF_RESVWAIT) {
  p->p_fd->fd_ofileflags[fd] &= ~UF_RESVWAIT;
  wakeup(&p->p_fd);
 }
}
