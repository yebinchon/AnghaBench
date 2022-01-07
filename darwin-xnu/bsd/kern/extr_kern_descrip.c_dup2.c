
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct fileproc {int dummy; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; int ** fd_ofiles; } ;
struct dup2_args {int from; int to; } ;
typedef scalar_t__ rlim_t ;
typedef TYPE_2__* proc_t ;
typedef int int32_t ;
struct TYPE_18__ {TYPE_1__* p_rlimit; struct filedesc* p_fd; } ;
struct TYPE_17__ {scalar_t__ rlim_cur; } ;


 int EBADF ;
 int FD_DUP2RESV ;
 scalar_t__ FP_ISGUARDED (struct fileproc*,int ) ;
 int GUARD_CLOSE ;
 int GUARD_DUP ;
 int LCK_MTX_ASSERT_OWNED ;
 size_t RLIMIT_NOFILE ;
 int UF_RESERVED ;
 int close_internal_locked (TYPE_2__*,int,struct fileproc*,int ) ;
 int fdalloc (TYPE_2__*,int,int*) ;
 int fdrelse (TYPE_2__*,int) ;
 int finishdup (TYPE_2__*,struct filedesc*,int,int,int ,int*) ;
 int fp_drop (TYPE_2__*,int,struct fileproc*,int) ;
 int fp_guard_exception (TYPE_2__*,int,struct fileproc*,int ) ;
 int fp_lookup (TYPE_2__*,int,struct fileproc**,int) ;
 int kGUARD_EXC_CLOSE ;
 int kGUARD_EXC_DUP ;
 int maxfiles ;
 int panic (char*,int) ;
 int proc_fdlock (TYPE_2__*) ;
 int proc_fdlock_assert (TYPE_2__*,int ) ;
 int proc_fdunlock (TYPE_2__*) ;
 int procfdtbl_clearfd (TYPE_2__*,int) ;
 int procfdtbl_reservefd (TYPE_2__*,int) ;
 int procfdtbl_waitfd (TYPE_2__*,int) ;

int
dup2(proc_t p, struct dup2_args *uap, int32_t *retval)
{
 struct filedesc *fdp = p->p_fd;
 int old = uap->from, new = uap->to;
 int i, error;
 struct fileproc *fp, *nfp;

 proc_fdlock(p);

startover:
 if ( (error = fp_lookup(p, old, &fp, 1)) ) {
  proc_fdunlock(p);
  return(error);
 }
 if (FP_ISGUARDED(fp, GUARD_DUP)) {
  error = fp_guard_exception(p, old, fp, kGUARD_EXC_DUP);
  (void) fp_drop(p, old, fp, 1);
  proc_fdunlock(p);
  return (error);
 }
 if (new < 0 ||
  (rlim_t)new >= p->p_rlimit[RLIMIT_NOFILE].rlim_cur ||
     new >= maxfiles) {
  fp_drop(p, old, fp, 1);
  proc_fdunlock(p);
  return (EBADF);
 }
 if (old == new) {
  fp_drop(p, old, fp, 1);
  *retval = new;
  proc_fdunlock(p);
  return (0);
 }
 if (new < 0 || new >= fdp->fd_nfiles) {
  if ( (error = fdalloc(p, new, &i)) ) {
   fp_drop(p, old, fp, 1);
   proc_fdunlock(p);
   return (error);
  }
  if (new != i) {
   fdrelse(p, i);
   goto closeit;
  }
 } else {
closeit:
  while ((fdp->fd_ofileflags[new] & UF_RESERVED) == UF_RESERVED) {
    fp_drop(p, old, fp, 1);
    procfdtbl_waitfd(p, new);



    goto startover;
  }

  if ((fdp->fd_ofiles[new] != ((void*)0)) &&
      ((error = fp_lookup(p, new, &nfp, 1)) == 0)) {
   fp_drop(p, old, fp, 1);
   if (FP_ISGUARDED(nfp, GUARD_CLOSE)) {
    error = fp_guard_exception(p,
        new, nfp, kGUARD_EXC_CLOSE);
    (void) fp_drop(p, new, nfp, 1);
    proc_fdunlock(p);
    return (error);
   }
   (void)close_internal_locked(p, new, nfp, FD_DUP2RESV);



   procfdtbl_clearfd(p, new);
   goto startover;
  } else {




   procfdtbl_reservefd(p, new);
  }





 }






 error = finishdup(p, fdp, old, new, 0, retval);
 fp_drop(p, old, fp, 1);
 proc_fdunlock(p);

 return(error);
}
