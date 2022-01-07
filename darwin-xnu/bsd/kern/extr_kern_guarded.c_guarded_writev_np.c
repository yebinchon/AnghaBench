
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_ssize_t ;
typedef int * uio_t ;
typedef int uguard ;
struct user_iovec {int dummy; } ;
struct proc {int dummy; } ;
struct guarded_writev_np_args {scalar_t__ iovcnt; int fd; int guard; int iovp; } ;
struct guarded_fileproc {int dummy; } ;
struct fileproc {int f_flag; } ;
typedef int guardid_t ;


 int AUDIT_ARG (int ,int ) ;
 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 int FWRITE ;
 struct fileproc* GFP_TO_FP (struct guarded_fileproc*) ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 scalar_t__ UIO_MAXIOV ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int UIO_WRITE ;
 int copyin (int ,int *,int) ;
 int copyin_user_iovec_array (int ,int ,scalar_t__,struct user_iovec*) ;
 int fd ;
 int fp_drop (struct proc*,int ,struct fileproc*,int ) ;
 int fp_drop_written (struct proc*,int ,struct fileproc*) ;
 int fp_lookup_guarded (struct proc*,int ,int ,struct guarded_fileproc**,int ) ;
 int uio_calculateresid (int *) ;
 int * uio_create (scalar_t__,int ,int ,int ) ;
 int uio_free (int *) ;
 struct user_iovec* uio_iovsaddr (int *) ;
 int wr_uio (struct proc*,struct fileproc*,int *,scalar_t__*) ;

int
guarded_writev_np(struct proc *p, struct guarded_writev_np_args *uap, user_ssize_t *retval)
{
 uio_t auio = ((void*)0);
 int error;
 struct fileproc *fp;
 struct user_iovec *iovp;
 guardid_t uguard;
 struct guarded_fileproc *gfp;
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

 if ((error = copyin(uap->guard, &uguard, sizeof (uguard))) != 0)
  goto ExitThisRoutine;

 error = fp_lookup_guarded(p, uap->fd, uguard, &gfp, 0);
 if (error)
  goto ExitThisRoutine;

 fp = GFP_TO_FP(gfp);
 if ((fp->f_flag & FWRITE) == 0) {
  error = EBADF;
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
