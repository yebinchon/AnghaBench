
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct user_msghdr_x {scalar_t__ msg_iovlen; scalar_t__ msg_controllen; scalar_t__ msg_control; scalar_t__ msg_namelen; scalar_t__ msg_name; int msg_datalen; int msg_iov; int msg_flags; } ;
struct user_iovec {int dummy; } ;
struct user64_msghdr_x {scalar_t__ msg_iovlen; int msg_datalen; int msg_flags; scalar_t__ msg_controllen; scalar_t__ msg_control; int msg_iov; scalar_t__ msg_namelen; scalar_t__ msg_name; } ;
struct user32_msghdr_x {scalar_t__ msg_iovlen; int msg_datalen; int msg_flags; scalar_t__ msg_controllen; scalar_t__ msg_control; int msg_iov; scalar_t__ msg_namelen; scalar_t__ msg_name; } ;
struct recv_msg_elem {int which; int * uio; } ;


 int CAST_USER_ADDR_T (struct user_iovec*) ;
 int EMSGSIZE ;
 int ENOMEM ;
 int SOCK_MSG_CONTROL ;
 int SOCK_MSG_SA ;
 scalar_t__ UIO_MAXIOV ;
 int UIO_USERSPACE64 ;
 int copyin_user_iovec_array (int ,int,scalar_t__,struct user_iovec*) ;
 int uio_calculateresid (int *) ;
 int * uio_create (scalar_t__,int ,int,int) ;
 struct user_iovec* uio_iovsaddr (int *) ;
 int uio_resid (int *) ;

int
internalize_recv_msghdr_array(const void *src, int spacetype, int direction,
    u_int count, struct user_msghdr_x *dst,
    struct recv_msg_elem *recv_msg_array)
{
 int error = 0;
 u_int i;

 for (i = 0; i < count; i++) {
  struct user_iovec *iovp;
  struct user_msghdr_x *user_msg = dst + i;
  struct recv_msg_elem *recv_msg_elem = recv_msg_array + i;

  if (spacetype == UIO_USERSPACE64) {
   const struct user64_msghdr_x *msghdr64;

   msghdr64 = ((const struct user64_msghdr_x *)src) + i;

   user_msg->msg_name = msghdr64->msg_name;
   user_msg->msg_namelen = msghdr64->msg_namelen;
   user_msg->msg_iov = msghdr64->msg_iov;
   user_msg->msg_iovlen = msghdr64->msg_iovlen;
   user_msg->msg_control = msghdr64->msg_control;
   user_msg->msg_controllen = msghdr64->msg_controllen;
   user_msg->msg_flags = msghdr64->msg_flags;
   user_msg->msg_datalen = msghdr64->msg_datalen;
  } else {
   const struct user32_msghdr_x *msghdr32;

   msghdr32 = ((const struct user32_msghdr_x *)src) + i;

   user_msg->msg_name = msghdr32->msg_name;
   user_msg->msg_namelen = msghdr32->msg_namelen;
   user_msg->msg_iov = msghdr32->msg_iov;
   user_msg->msg_iovlen = msghdr32->msg_iovlen;
   user_msg->msg_control = msghdr32->msg_control;
   user_msg->msg_controllen = msghdr32->msg_controllen;
   user_msg->msg_flags = msghdr32->msg_flags;
   user_msg->msg_datalen = msghdr32->msg_datalen;
  }

  if (user_msg->msg_iovlen <= 0 ||
      user_msg->msg_iovlen > UIO_MAXIOV) {
   error = EMSGSIZE;
   goto done;
  }
  recv_msg_elem->uio = uio_create(user_msg->msg_iovlen, 0,
      spacetype, direction);
  if (recv_msg_elem->uio == ((void*)0)) {
   error = ENOMEM;
   goto done;
  }

  iovp = uio_iovsaddr(recv_msg_elem->uio);
  if (iovp == ((void*)0)) {
   error = ENOMEM;
   goto done;
  }
  error = copyin_user_iovec_array(user_msg->msg_iov,
   spacetype, user_msg->msg_iovlen, iovp);
  if (error)
   goto done;
  user_msg->msg_iov = CAST_USER_ADDR_T(iovp);

  error = uio_calculateresid(recv_msg_elem->uio);
  if (error)
   goto done;
  user_msg->msg_datalen = uio_resid(recv_msg_elem->uio);

  if (user_msg->msg_name && user_msg->msg_namelen)
   recv_msg_elem->which |= SOCK_MSG_SA;
  if (user_msg->msg_control && user_msg->msg_controllen)
   recv_msg_elem->which |= SOCK_MSG_CONTROL;
 }
done:

 return (error);
}
