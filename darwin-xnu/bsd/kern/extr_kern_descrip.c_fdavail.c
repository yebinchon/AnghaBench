
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fileproc {int dummy; } ;
struct filedesc {int fd_nfiles; size_t fd_freefile; char* fd_ofileflags; struct fileproc** fd_ofiles; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_5__ {TYPE_1__* p_rlimit; struct filedesc* p_fd; } ;
struct TYPE_4__ {scalar_t__ rlim_cur; } ;


 size_t RLIMIT_NOFILE ;
 char UF_RESERVED ;
 int maxfiles ;
 int min (int,int ) ;

int
fdavail(proc_t p, int n)
{
 struct filedesc *fdp = p->p_fd;
 struct fileproc **fpp;
 char *flags;
 int i, lim;

 lim = min((int)p->p_rlimit[RLIMIT_NOFILE].rlim_cur, maxfiles);
 if ((i = lim - fdp->fd_nfiles) > 0 && (n -= i) <= 0)
  return (1);
 fpp = &fdp->fd_ofiles[fdp->fd_freefile];
 flags = &fdp->fd_ofileflags[fdp->fd_freefile];
 for (i = fdp->fd_nfiles - fdp->fd_freefile; --i >= 0; fpp++, flags++)
  if (*fpp == ((void*)0) && !(*flags & UF_RESERVED) && --n <= 0)
   return (1);
 return (0);
}
