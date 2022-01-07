
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* uthread_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct proc {scalar_t__ p_fpdrainwait; struct filedesc* p_fd; } ;
struct fileproc {scalar_t__ f_iocount; int f_flags; } ;
struct filedesc {struct fileproc** fd_ofiles; } ;
struct _select_data {int * wqp; } ;
struct TYPE_4__ {struct _select_data uus_select_data; } ;
struct TYPE_5__ {int uu_wqset; TYPE_1__ uu_save; } ;


 int EBADF ;
 int EIO ;
 int FP_SELCONFLICT ;
 int NFDBITS ;
 int current_thread () ;
 int ffs (int) ;
 TYPE_2__* get_bsdthread_info (int ) ;
 int howmany (int,int) ;
 int panic (char*) ;
 int selunlinkfp (struct fileproc*,int ,int ) ;

__attribute__((used)) static int
seldrop_locked(struct proc *p, u_int32_t *ibits, int nfd, int lim, int *need_wakeup, int fromselcount)
{
 struct filedesc *fdp = p->p_fd;
 int msk, i, j, nc, fd;
 u_int32_t bits;
 struct fileproc *fp;
 u_int32_t *iptr;
 u_int nw;
 int error = 0;
 int dropcount = 0;
 uthread_t uth = get_bsdthread_info(current_thread());
 struct _select_data *seldata;

 *need_wakeup = 0;





 if (fdp == ((void*)0)) {
  return(EIO);
 }

 nw = howmany(nfd, NFDBITS);
 seldata = &uth->uu_save.uus_select_data;

 nc = 0;
 for (msk = 0; msk < 3; msk++) {
  iptr = (u_int32_t *)&ibits[msk * nw];
  for (i = 0; i < nfd; i += NFDBITS) {
   bits = iptr[i/NFDBITS];
   while ((j = ffs(bits)) && (fd = i + --j) < nfd) {
    bits &= ~(1 << j);
    fp = fdp->fd_ofiles[fd];




    if ((fromselcount != 0) && (++dropcount > lim))
     goto done;






    selunlinkfp(fp,
         seldata->wqp ? seldata->wqp[nc] : 0,
         uth->uu_wqset);

    nc++;

    if (fp == ((void*)0)) {

     error = EBADF;
     continue;
    }

    fp->f_iocount--;
    if (fp->f_iocount < 0)
     panic("f_iocount overdecrement!");

    if (fp->f_iocount == 0) {






     if (fp->f_flags & FP_SELCONFLICT)
      fp->f_flags &= ~FP_SELCONFLICT;
     if (p->p_fpdrainwait) {
      p->p_fpdrainwait = 0;
      *need_wakeup = 1;
     }
    }
   }
  }
 }
done:
 return (error);
}
