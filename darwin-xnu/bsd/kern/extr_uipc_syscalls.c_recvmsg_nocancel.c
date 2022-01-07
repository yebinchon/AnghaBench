
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int * uio_t ;
struct user_msghdr {scalar_t__ msg_iovlen; int msg_name; int msg_namelen; int msg_iov; int msg_control; int msg_controllen; int msg_flags; } ;
struct user_iovec {int dummy; } ;
struct user64_msghdr {scalar_t__ msg_iovlen; int msg_name; int msg_namelen; int msg_iov; int msg_control; int msg_controllen; int msg_flags; } ;
struct user32_msghdr {scalar_t__ msg_iovlen; int msg_name; int msg_namelen; int msg_iov; int msg_control; int msg_controllen; int msg_flags; } ;
struct recvmsg_nocancel_args {int msg; int s; int flags; } ;
struct proc {int dummy; } ;
typedef int msg64 ;
typedef int msg32 ;
typedef int int32_t ;
typedef scalar_t__ caddr_t ;


 int AUDIT_ARG (int ,int ) ;
 int CAST_USER_ADDR_T (struct user_iovec*) ;
 int DBG_FNC_RECVMSG ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EMSGSIZE ;
 int ENOMEM ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 int KERNEL_DEBUG (int,int,int ,int ,int ,int ) ;
 scalar_t__ UIO_MAXIOV ;
 int UIO_READ ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int copyin (int ,scalar_t__,int) ;
 int copyin_user_iovec_array (int ,int ,scalar_t__,struct user_iovec*) ;
 int copyout (scalar_t__,int ,int) ;
 int fd ;
 int recvit (struct proc*,int ,struct user_msghdr*,int *,int ,int *) ;
 int uio_calculateresid (int *) ;
 int * uio_create (scalar_t__,int ,int ,int ) ;
 int uio_free (int *) ;
 struct user_iovec* uio_iovsaddr (int *) ;

int
recvmsg_nocancel(struct proc *p, struct recvmsg_nocancel_args *uap,
    int32_t *retval)
{
 struct user32_msghdr msg32;
 struct user64_msghdr msg64;
 struct user_msghdr user_msg;
 caddr_t msghdrp;
 int size_of_msghdr;
 user_addr_t uiov;
 int error;
 uio_t auio = ((void*)0);
 struct user_iovec *iovp;

 KERNEL_DEBUG(DBG_FNC_RECVMSG | DBG_FUNC_START, 0, 0, 0, 0, 0);
 AUDIT_ARG(fd, uap->s);
 if (IS_64BIT_PROCESS(p)) {
  msghdrp = (caddr_t)&msg64;
  size_of_msghdr = sizeof (msg64);
 } else {
  msghdrp = (caddr_t)&msg32;
  size_of_msghdr = sizeof (msg32);
 }
 error = copyin(uap->msg, msghdrp, size_of_msghdr);
 if (error) {
  KERNEL_DEBUG(DBG_FNC_RECVMSG | DBG_FUNC_END, error, 0, 0, 0, 0);
  return (error);
 }


 if (IS_64BIT_PROCESS(p)) {
  user_msg.msg_flags = msg64.msg_flags;
  user_msg.msg_controllen = msg64.msg_controllen;
  user_msg.msg_control = msg64.msg_control;
  user_msg.msg_iovlen = msg64.msg_iovlen;
  user_msg.msg_iov = msg64.msg_iov;
  user_msg.msg_namelen = msg64.msg_namelen;
  user_msg.msg_name = msg64.msg_name;
 } else {
  user_msg.msg_flags = msg32.msg_flags;
  user_msg.msg_controllen = msg32.msg_controllen;
  user_msg.msg_control = msg32.msg_control;
  user_msg.msg_iovlen = msg32.msg_iovlen;
  user_msg.msg_iov = msg32.msg_iov;
  user_msg.msg_namelen = msg32.msg_namelen;
  user_msg.msg_name = msg32.msg_name;
 }

 if (user_msg.msg_iovlen <= 0 || user_msg.msg_iovlen > UIO_MAXIOV) {
  KERNEL_DEBUG(DBG_FNC_RECVMSG | DBG_FUNC_END, EMSGSIZE,
      0, 0, 0, 0);
  return (EMSGSIZE);
 }

 user_msg.msg_flags = uap->flags;


 auio = uio_create(user_msg.msg_iovlen, 0,
     (IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
     UIO_READ);
 if (auio == ((void*)0)) {
  error = ENOMEM;
  goto done;
 }





 iovp = uio_iovsaddr(auio);
 if (iovp == ((void*)0)) {
  error = ENOMEM;
  goto done;
 }
 uiov = user_msg.msg_iov;
 user_msg.msg_iov = CAST_USER_ADDR_T(iovp);
 error = copyin_user_iovec_array(uiov,
  IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32,
  user_msg.msg_iovlen, iovp);
 if (error)
  goto done;


 error = uio_calculateresid(auio);
 if (error) {
  goto done;
 }

 error = recvit(p, uap->s, &user_msg, auio, 0, retval);
 if (!error) {
  user_msg.msg_iov = uiov;
  if (IS_64BIT_PROCESS(p)) {
   msg64.msg_flags = user_msg.msg_flags;
   msg64.msg_controllen = user_msg.msg_controllen;
   msg64.msg_control = user_msg.msg_control;
   msg64.msg_iovlen = user_msg.msg_iovlen;
   msg64.msg_iov = user_msg.msg_iov;
   msg64.msg_namelen = user_msg.msg_namelen;
   msg64.msg_name = user_msg.msg_name;
  } else {
   msg32.msg_flags = user_msg.msg_flags;
   msg32.msg_controllen = user_msg.msg_controllen;
   msg32.msg_control = user_msg.msg_control;
   msg32.msg_iovlen = user_msg.msg_iovlen;
   msg32.msg_iov = user_msg.msg_iov;
   msg32.msg_namelen = user_msg.msg_namelen;
   msg32.msg_name = user_msg.msg_name;
  }
  error = copyout(msghdrp, uap->msg, size_of_msghdr);
 }
done:
 if (auio != ((void*)0)) {
  uio_free(auio);
 }
 KERNEL_DEBUG(DBG_FNC_RECVMSG | DBG_FUNC_END, error, 0, 0, 0, 0);
 return (error);
}
