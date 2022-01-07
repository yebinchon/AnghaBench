
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
struct vfs_context {int vc_ucred; } ;
struct proc {struct filedesc* p_fd; } ;
struct fileproc {int f_flags; scalar_t__ f_type; scalar_t__ f_ops; int f_cred; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;
struct _select_data {int count; int * wqp; } ;
struct _select {int* ibits; int* obits; } ;
typedef int int32_t ;


 int EBADF ;
 int EIO ;
 int FP_INSELECT ;
 int FP_SELCONFLICT ;


 int NFDBITS ;
 int SEL_FIRSTPASS ;
 int SEL_SECONDPASS ;
 int UF_RESERVED ;
 int ffs (int) ;
 scalar_t__ fo_select (struct fileproc*,int,scalar_t__*,struct vfs_context*) ;
 int howmany (int,int) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int sellinkfp (struct fileproc*,void**,struct waitq_set*) ;
 int selunlinkfp (struct fileproc*,int ,struct waitq_set*) ;
 struct vfs_context* vfs_context_current () ;
 int waitq_link_release (scalar_t__) ;
 scalar_t__ waitq_link_reserve (struct waitq*) ;
 int waitq_set_lazy_init_link (struct waitq_set*) ;

__attribute__((used)) static int
selscan(struct proc *p, struct _select *sel, struct _select_data * seldata,
 int nfd, int32_t *retval, int sel_pass, struct waitq_set *wqset)
{
 struct filedesc *fdp = p->p_fd;
 int msk, i, j, fd;
 u_int32_t bits;
 struct fileproc *fp;
 int n = 0;
 int nc = 0;
 static int flag[3] = { 129, 128, 0 };
 u_int32_t *iptr, *optr;
 u_int nw;
 u_int32_t *ibits, *obits;
 uint64_t reserved_link, *rl_ptr = ((void*)0);
 int count;
 struct vfs_context context = *vfs_context_current();





 if (fdp == ((void*)0)) {
  *retval=0;
  return(EIO);
 }
 ibits = sel->ibits;
 obits = sel->obits;

 nw = howmany(nfd, NFDBITS);

 count = seldata->count;

 nc = 0;
 if (!count) {
  *retval = 0;
  return 0;
 }

 proc_fdlock(p);
 for (msk = 0; msk < 3; msk++) {
  iptr = (u_int32_t *)&ibits[msk * nw];
  optr = (u_int32_t *)&obits[msk * nw];

  for (i = 0; i < nfd; i += NFDBITS) {
   bits = iptr[i/NFDBITS];

   while ((j = ffs(bits)) && (fd = i + --j) < nfd) {
    bits &= ~(1 << j);

    if (fd < fdp->fd_nfiles)
     fp = fdp->fd_ofiles[fd];
    else
     fp = ((void*)0);

    if (fp == ((void*)0) || (fdp->fd_ofileflags[fd] & UF_RESERVED)) {




     proc_fdunlock(p);
     return(EBADF);
    }
    if (sel_pass == SEL_SECONDPASS) {
     reserved_link = 0;
     rl_ptr = ((void*)0);
     selunlinkfp(fp, seldata->wqp[nc], wqset);
    } else {
     reserved_link = waitq_link_reserve((struct waitq *)wqset);
     rl_ptr = &reserved_link;
     if (fp->f_flags & FP_INSELECT)

      fp->f_flags |= FP_SELCONFLICT;
     else
      fp->f_flags |= FP_INSELECT;

     waitq_set_lazy_init_link(wqset);
    }

    context.vc_ucred = fp->f_cred;





    uint64_t rsvd = reserved_link;


    if (fp->f_ops && fp->f_type
     && fo_select(fp, flag[msk], rl_ptr, &context)) {
     optr[fd/NFDBITS] |= (1 << (fd % NFDBITS));
     n++;
    }
    if (sel_pass == SEL_FIRSTPASS) {
     waitq_link_release(rsvd);






     if (reserved_link == rsvd)
      rl_ptr = ((void*)0);






     seldata->wqp[nc] = sellinkfp(fp, (void **)rl_ptr, wqset);
    }
    nc++;
   }
  }
 }
 proc_fdunlock(p);

 *retval = n;
 return (0);
}
