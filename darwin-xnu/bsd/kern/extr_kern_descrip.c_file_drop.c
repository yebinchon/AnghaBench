
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fileproc {scalar_t__ f_iocount; int f_flags; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_7__ {scalar_t__ p_fpdrainwait; TYPE_1__* p_fd; } ;
struct TYPE_6__ {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;


 int EBADF ;
 int FP_SELCONFLICT ;
 int UF_CLOSING ;
 int UF_RESERVED ;
 TYPE_2__* current_proc () ;
 int proc_fdlock_spin (TYPE_2__*) ;
 int proc_fdunlock (TYPE_2__*) ;
 int wakeup (scalar_t__*) ;

int
file_drop(int fd)
{
 struct fileproc *fp;
 proc_t p = current_proc();
 int needwakeup = 0;

 proc_fdlock_spin(p);
 if (fd < 0 || fd >= p->p_fd->fd_nfiles ||
   (fp = p->p_fd->fd_ofiles[fd]) == ((void*)0) ||
   ((p->p_fd->fd_ofileflags[fd] & UF_RESERVED) &&
    !(p->p_fd->fd_ofileflags[fd] & UF_CLOSING))) {
  proc_fdunlock(p);
  return (EBADF);
 }
 fp->f_iocount --;

 if (fp->f_iocount == 0) {
  if (fp->f_flags & FP_SELCONFLICT)
   fp->f_flags &= ~FP_SELCONFLICT;

  if (p->p_fpdrainwait) {
   p->p_fpdrainwait = 0;
   needwakeup = 1;
  }
 }
 proc_fdunlock(p);

 if (needwakeup)
         wakeup(&p->p_fpdrainwait);
 return(0);
}
