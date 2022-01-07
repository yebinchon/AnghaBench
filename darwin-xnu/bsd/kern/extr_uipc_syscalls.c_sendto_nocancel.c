
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uio_t ;
struct user_msghdr {scalar_t__ msg_flags; scalar_t__ msg_control; scalar_t__ msg_iovlen; scalar_t__ msg_iov; int msg_namelen; int msg_name; } ;
struct socket {int dummy; } ;
struct sendto_nocancel_args {int s; int flags; int tolen; int to; int len; int buf; } ;
struct proc {int dummy; } ;
typedef int int32_t ;


 int AUDIT_ARG (int ,int ) ;
 int DBG_FNC_SENDTO ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EBADF ;
 int ENOMEM ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 int KERNEL_DEBUG (int,int,int ,int ,int ,int ) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int UIO_WRITE ;
 int fd ;
 int file_drop (int ) ;
 int file_socket (int ,struct socket**) ;
 int sendit (struct proc*,struct socket*,struct user_msghdr*,int *,int ,int *) ;
 int uio_addiov (int *,int ,int ) ;
 int * uio_create (int,int ,int ,int ) ;
 int uio_free (int *) ;

int
sendto_nocancel(struct proc *p,
  struct sendto_nocancel_args *uap,
  int32_t *retval)
{
 struct user_msghdr msg;
 int error;
 uio_t auio = ((void*)0);
 struct socket *so;

 KERNEL_DEBUG(DBG_FNC_SENDTO | DBG_FUNC_START, 0, 0, 0, 0, 0);
 AUDIT_ARG(fd, uap->s);

 auio = uio_create(1, 0,
     (IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
     UIO_WRITE);
 if (auio == ((void*)0)) {
  error = ENOMEM;
  goto done;
 }
 uio_addiov(auio, uap->buf, uap->len);

 msg.msg_name = uap->to;
 msg.msg_namelen = uap->tolen;

 msg.msg_iov = 0;
 msg.msg_iovlen = 0;
 msg.msg_control = 0;
 msg.msg_flags = 0;

 error = file_socket(uap->s, &so);
 if (error)
  goto done;

 if (so == ((void*)0)) {
  error = EBADF;
 } else {
  error = sendit(p, so, &msg, auio, uap->flags, retval);
 }

 file_drop(uap->s);
done:
 if (auio != ((void*)0))
  uio_free(auio);

 KERNEL_DEBUG(DBG_FNC_SENDTO | DBG_FUNC_END, error, *retval, 0, 0, 0);

 return (error);
}
