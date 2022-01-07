
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uio_t ;
struct user_msghdr {int msg_flags; scalar_t__ msg_controllen; scalar_t__ msg_control; scalar_t__ msg_iovlen; scalar_t__ msg_iov; int msg_name; scalar_t__ msg_namelen; } ;
struct recvfrom_nocancel_args {int fromlenaddr; int s; int flags; int len; int buf; int from; } ;
struct proc {int dummy; } ;
typedef int int32_t ;
typedef int caddr_t ;


 int AUDIT_ARG (int ,int ) ;
 int DBG_FNC_RECVFROM ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int ENOMEM ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 int KERNEL_DEBUG (int,int,int ,int ,int ,int ) ;
 int UIO_READ ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int copyin (int ,int ,int) ;
 int fd ;
 int recvit (struct proc*,int ,struct user_msghdr*,int *,int ,int *) ;
 int uio_addiov (int *,int ,int ) ;
 int * uio_create (int,int ,int ,int ) ;
 int uio_free (int *) ;

int
recvfrom_nocancel(struct proc *p, struct recvfrom_nocancel_args *uap,
    int32_t *retval)
{
 struct user_msghdr msg;
 int error;
 uio_t auio = ((void*)0);

 KERNEL_DEBUG(DBG_FNC_RECVFROM | DBG_FUNC_START, 0, 0, 0, 0, 0);
 AUDIT_ARG(fd, uap->s);

 if (uap->fromlenaddr) {
  error = copyin(uap->fromlenaddr,
      (caddr_t)&msg.msg_namelen, sizeof (msg.msg_namelen));
  if (error)
   return (error);
 } else {
  msg.msg_namelen = 0;
 }
 msg.msg_name = uap->from;
 auio = uio_create(1, 0,
     (IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
     UIO_READ);
 if (auio == ((void*)0)) {
  return (ENOMEM);
 }

 uio_addiov(auio, uap->buf, uap->len);

 msg.msg_iov = 0;
 msg.msg_iovlen = 0;
 msg.msg_control = 0;
 msg.msg_controllen = 0;
 msg.msg_flags = uap->flags;
 error = recvit(p, uap->s, &msg, auio, uap->fromlenaddr, retval);
 if (auio != ((void*)0)) {
  uio_free(auio);
 }

 KERNEL_DEBUG(DBG_FNC_RECVFROM | DBG_FUNC_END, error, 0, 0, 0, 0);

 return (error);
}
