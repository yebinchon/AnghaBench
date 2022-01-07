
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_ssize_t ;
typedef int * uio_t ;
struct writev_nocancel_args {scalar_t__ iovcnt; int fd; int iovp; } ;
struct user_iovec {int dummy; } ;
struct proc {int dummy; } ;
struct fileproc {int f_flag; } ;


 int AUDIT_ARG (int ,int ) ;
 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FP_ISGUARDED (struct fileproc*,int ) ;
 int FWRITE ;
 int GUARD_WRITE ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 scalar_t__ UIO_MAXIOV ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int UIO_WRITE ;
 int copyin_user_iovec_array (int ,int ,scalar_t__,struct user_iovec*) ;
 int fd ;
 int fp_drop (struct proc*,int ,struct fileproc*,int ) ;
 int fp_drop_written (struct proc*,int ,struct fileproc*) ;
 int fp_guard_exception (struct proc*,int ,struct fileproc*,int ) ;
 int fp_lookup (struct proc*,int ,struct fileproc**,int ) ;
 int kGUARD_EXC_WRITE ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int uio_calculateresid (int *) ;
 int * uio_create (scalar_t__,int ,int ,int ) ;
 int uio_free (int *) ;
 struct user_iovec* uio_iovsaddr (int *) ;
 int wr_uio (struct proc*,struct fileproc*,int *,scalar_t__*) ;

int
writev_nocancel(struct proc *p, struct writev_nocancel_args *uap, user_ssize_t *retval)
{
 uio_t auio = ((void*)0);
 int error;
 struct fileproc *fp;
 struct user_iovec *iovp;
 bool wrote_some = 0;

 AUDIT_ARG(fd, uap->fd);


 if (uap->iovcnt <= 0 || uap->iovcnt > UIO_MAXIOV)
  return (EINVAL);


 auio = uio_create(uap->iovcnt, 0,
      (IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
      UIO_WRITE);




 iovp = uio_iovsaddr(auio);
 if (iovp == ((void*)0)) {
  error = ENOMEM;
  goto ExitThisRoutine;
 }
 error = copyin_user_iovec_array(uap->iovp,
  IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32,
  uap->iovcnt, iovp);
 if (error) {
  goto ExitThisRoutine;
 }



 error = uio_calculateresid(auio);
 if (error) {
  goto ExitThisRoutine;
 }

 error = fp_lookup(p, uap->fd, &fp, 0);
 if (error)
  goto ExitThisRoutine;

 if ((fp->f_flag & FWRITE) == 0) {
  error = EBADF;
 } else if (FP_ISGUARDED(fp, GUARD_WRITE)) {
  proc_fdlock(p);
  error = fp_guard_exception(p, uap->fd, fp, kGUARD_EXC_WRITE);
  proc_fdunlock(p);
 } else {
  error = wr_uio(p, fp, auio, retval);
  wrote_some = *retval > 0;
 }

 if (wrote_some)
         fp_drop_written(p, uap->fd, fp);
 else
         fp_drop(p, uap->fd, fp, 0);

ExitThisRoutine:
 if (auio != ((void*)0)) {
  uio_free(auio);
 }
 return (error);
}
