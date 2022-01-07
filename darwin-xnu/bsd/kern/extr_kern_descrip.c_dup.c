
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct fileproc {scalar_t__ f_type; int f_data; } ;
struct filedesc {int dummy; } ;
struct dup_args {int fd; } ;
typedef TYPE_1__* proc_t ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_10__ {struct filedesc* p_fd; } ;


 int DBG_FUNC_START ;
 scalar_t__ DTYPE_SOCKET ;
 scalar_t__ ENTR_SHOULDTRACE ;
 scalar_t__ FP_ISGUARDED (struct fileproc*,int ) ;
 int GUARD_DUP ;
 int KERNEL_ENERGYTRACE (int ,int ,int,int ,int ) ;
 scalar_t__ VM_KERNEL_ADDRPERM (int ) ;
 int fdalloc (TYPE_1__*,int ,int*) ;
 int finishdup (TYPE_1__*,struct filedesc*,int,int,int ,int *) ;
 int fp_drop (TYPE_1__*,int,struct fileproc*,int) ;
 int fp_guard_exception (TYPE_1__*,int,struct fileproc*,int ) ;
 int fp_lookup (TYPE_1__*,int,struct fileproc**,int) ;
 int kEnTrActKernSocket ;
 int kGUARD_EXC_DUP ;
 int proc_fdlock (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;

int
dup(proc_t p, struct dup_args *uap, int32_t *retval)
{
 struct filedesc *fdp = p->p_fd;
 int old = uap->fd;
 int new, error;
 struct fileproc *fp;

 proc_fdlock(p);
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
 if ( (error = fdalloc(p, 0, &new)) ) {
  fp_drop(p, old, fp, 1);
  proc_fdunlock(p);
  return (error);
 }
 error = finishdup(p, fdp, old, new, 0, retval);
 fp_drop(p, old, fp, 1);
 proc_fdunlock(p);

 if (ENTR_SHOULDTRACE && fp->f_type == DTYPE_SOCKET) {
  KERNEL_ENERGYTRACE(kEnTrActKernSocket, DBG_FUNC_START,
      new, 0, (int64_t)VM_KERNEL_ADDRPERM(fp->f_data));
 }

 return (error);
}
