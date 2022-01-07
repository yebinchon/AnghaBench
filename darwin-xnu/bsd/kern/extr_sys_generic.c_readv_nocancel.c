
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
typedef int * uio_t ;
struct user_iovec {int dummy; } ;
struct readv_nocancel_args {scalar_t__ iovcnt; int fd; int iovp; } ;
struct proc {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 scalar_t__ UIO_MAXIOV ;
 int UIO_READ ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int copyin_user_iovec_array (int ,int ,scalar_t__,struct user_iovec*) ;
 int rd_uio (struct proc*,int ,int *,int *) ;
 int uio_calculateresid (int *) ;
 int * uio_create (scalar_t__,int ,int ,int ) ;
 int uio_free (int *) ;
 struct user_iovec* uio_iovsaddr (int *) ;

int
readv_nocancel(struct proc *p, struct readv_nocancel_args *uap, user_ssize_t *retval)
{
 uio_t auio = ((void*)0);
 int error;
 struct user_iovec *iovp;


 if (uap->iovcnt <= 0 || uap->iovcnt > UIO_MAXIOV)
  return (EINVAL);


 auio = uio_create(uap->iovcnt, 0,
      (IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
      UIO_READ);




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
 error = rd_uio(p, uap->fd, auio, retval);

ExitThisRoutine:
 if (auio != ((void*)0)) {
  uio_free(auio);
 }
 return (error);
}
