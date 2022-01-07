
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
struct proc {int p_fpdrainwait; struct filedesc* p_fd; } ;
struct fileproc {int f_iocount; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;


 int EBADF ;
 int EIO ;
 int NFDBITS ;
 int UF_RESERVED ;
 int ffs (int) ;
 int howmany (int,int) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int seldrop_locked (struct proc*,int*,int,int,int*,int) ;
 int wakeup (int *) ;

__attribute__((used)) static int
selcount(struct proc *p, u_int32_t *ibits, int nfd, int *countp)
{
 struct filedesc *fdp = p->p_fd;
 int msk, i, j, fd;
 u_int32_t bits;
 struct fileproc *fp;
 int n = 0;
 u_int32_t *iptr;
 u_int nw;
 int error=0;
 int dropcount;
 int need_wakeup = 0;





 if (fdp == ((void*)0)) {
  *countp = 0;
  return(EIO);
 }
 nw = howmany(nfd, NFDBITS);

 proc_fdlock(p);
 for (msk = 0; msk < 3; msk++) {
  iptr = (u_int32_t *)&ibits[msk * nw];
  for (i = 0; i < nfd; i += NFDBITS) {
   bits = iptr[i/NFDBITS];
   while ((j = ffs(bits)) && (fd = i + --j) < nfd) {
    bits &= ~(1 << j);

    if (fd < fdp->fd_nfiles)
     fp = fdp->fd_ofiles[fd];
    else
     fp = ((void*)0);

    if (fp == ((void*)0) ||
     (fdp->fd_ofileflags[fd] & UF_RESERVED)) {
      *countp = 0;
      error = EBADF;
      goto bad;
    }
    fp->f_iocount++;
    n++;
   }
  }
 }
 proc_fdunlock(p);

 *countp = n;
 return (0);

bad:
 dropcount = 0;

 if (n == 0)
  goto out;

 (void)seldrop_locked(p, ibits, nfd, n, &need_wakeup, 1);

out:
 proc_fdunlock(p);
 if (need_wakeup) {
  wakeup(&p->p_fpdrainwait);
 }
 return(error);
}
