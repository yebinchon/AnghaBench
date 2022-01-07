
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
typedef int * uio_t ;
struct user_sa_endpoints {scalar_t__ sae_srcaddr; int sae_srcaddrlen; scalar_t__ sae_dstaddr; int sae_dstaddrlen; int sae_srcif; } ;
struct user_iovec {int dummy; } ;
struct user64_sa_endpoints {scalar_t__ sae_srcaddr; int sae_srcaddrlen; scalar_t__ sae_dstaddr; int sae_dstaddrlen; int sae_srcif; } ;
struct user32_sa_endpoints {scalar_t__ sae_srcaddr; int sae_srcaddrlen; scalar_t__ sae_dstaddr; int sae_dstaddrlen; int sae_srcif; } ;
struct socket {scalar_t__ so_type; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct connectx_args {int socket; scalar_t__ endpoints; scalar_t__ iov; scalar_t__ iovcnt; scalar_t__ len; scalar_t__ connid; int flags; int associd; } ;
typedef int ss ;
typedef int sd ;
typedef int sae_connid_t ;
typedef int ep64 ;
typedef int ep32 ;
typedef int cid ;
typedef int caddr_t ;
typedef int boolean_t ;


 int AUDIT_ARG (int,int) ;
 int EBADF ;
 int EINTR ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTART ;
 int FREE (struct sockaddr*,int ) ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 int M_SONAME ;
 struct sockaddr* SA (struct sockaddr_storage*) ;
 int SAE_CONNID_ANY ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ UIO_MAXIOV ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int UIO_WRITE ;
 scalar_t__ USER_ADDR_NULL ;
 int VERIFY (int ) ;
 int connectitx (struct socket*,struct sockaddr*,struct sockaddr*,struct proc*,int ,int ,int *,int *,int ,int *) ;
 int copyin (scalar_t__,int ,int) ;
 int copyin_user_iovec_array (scalar_t__,int ,scalar_t__,struct user_iovec*) ;
 int copyout (int *,scalar_t__,int) ;
 int file_drop (int) ;
 int file_socket (int,struct socket**) ;
 int getsockaddr (struct socket*,struct sockaddr**,scalar_t__,int,int) ;
 int getsockaddr_s (struct socket*,struct sockaddr_storage*,scalar_t__,int,int) ;
 int uio_calculateresid (int *) ;
 int * uio_create (scalar_t__,int ,int ,int ) ;
 int uio_free (int *) ;
 struct user_iovec* uio_iovsaddr (int *) ;

__attribute__((used)) static int
connectx_nocancel(struct proc *p, struct connectx_args *uap, int *retval)
{
#pragma unused(p, retval)
 struct sockaddr_storage ss, sd;
 struct sockaddr *src = ((void*)0), *dst = ((void*)0);
 struct socket *so;
 int error, error1, fd = uap->socket;
 boolean_t dgram;
 sae_connid_t cid = SAE_CONNID_ANY;
 struct user32_sa_endpoints ep32;
 struct user64_sa_endpoints ep64;
 struct user_sa_endpoints ep;
 user_ssize_t bytes_written = 0;
 struct user_iovec *iovp;
 uio_t auio = ((void*)0);

 AUDIT_ARG(fd, uap->socket);
 error = file_socket(fd, &so);
 if (error != 0)
  return (error);
 if (so == ((void*)0)) {
  error = EBADF;
  goto out;
 }

 if (uap->endpoints == USER_ADDR_NULL) {
  error = EINVAL;
  goto out;
 }

 if (IS_64BIT_PROCESS(p)) {
  error = copyin(uap->endpoints, (caddr_t)&ep64, sizeof(ep64));
  if (error != 0)
   goto out;

  ep.sae_srcif = ep64.sae_srcif;
  ep.sae_srcaddr = ep64.sae_srcaddr;
  ep.sae_srcaddrlen = ep64.sae_srcaddrlen;
  ep.sae_dstaddr = ep64.sae_dstaddr;
  ep.sae_dstaddrlen = ep64.sae_dstaddrlen;
 } else {
  error = copyin(uap->endpoints, (caddr_t)&ep32, sizeof(ep32));
  if (error != 0)
   goto out;

  ep.sae_srcif = ep32.sae_srcif;
  ep.sae_srcaddr = ep32.sae_srcaddr;
  ep.sae_srcaddrlen = ep32.sae_srcaddrlen;
  ep.sae_dstaddr = ep32.sae_dstaddr;
  ep.sae_dstaddrlen = ep32.sae_dstaddrlen;
 }





 dgram = (so->so_type == SOCK_DGRAM);


 if (ep.sae_srcaddr != USER_ADDR_NULL) {
  if (ep.sae_srcaddrlen > sizeof (ss)) {
   error = getsockaddr(so, &src, ep.sae_srcaddr, ep.sae_srcaddrlen, dgram);
  } else {
   error = getsockaddr_s(so, &ss, ep.sae_srcaddr, ep.sae_srcaddrlen, dgram);
   if (error == 0)
    src = (struct sockaddr *)&ss;
  }

  if (error)
   goto out;
 }

 if (ep.sae_dstaddr == USER_ADDR_NULL) {
  error = EINVAL;
  goto out;
 }


 if (ep.sae_dstaddrlen > sizeof (sd)) {
  error = getsockaddr(so, &dst, ep.sae_dstaddr, ep.sae_dstaddrlen, dgram);
 } else {
  error = getsockaddr_s(so, &sd, ep.sae_dstaddr, ep.sae_dstaddrlen, dgram);
  if (error == 0)
   dst = (struct sockaddr *)&sd;
 }

 if (error)
  goto out;

 VERIFY(dst != ((void*)0));

 if (uap->iov != USER_ADDR_NULL) {

  if (uap->iovcnt <= 0 || uap->iovcnt > UIO_MAXIOV){
   error = EINVAL;
   goto out;
  }

  if (uap->len == USER_ADDR_NULL){
   error = EINVAL;
   goto out;
  }


  auio = uio_create(uap->iovcnt, 0,
      (IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
      UIO_WRITE);

  if (auio == ((void*)0)) {
   error = ENOMEM;
   goto out;
  }





  iovp = uio_iovsaddr(auio);
  if (iovp == ((void*)0)) {
   error = ENOMEM;
   goto out;
  }
  error = copyin_user_iovec_array(uap->iov,
   IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32,
   uap->iovcnt, iovp);
  if (error != 0)
   goto out;


  error = uio_calculateresid(auio);
  if (error != 0) {
   goto out;
  }
 }

 error = connectitx(so, src, dst, p, ep.sae_srcif, uap->associd,
     &cid, auio, uap->flags, &bytes_written);
 if (error == ERESTART)
  error = EINTR;

 if (uap->len != USER_ADDR_NULL) {
  error1 = copyout(&bytes_written, uap->len, sizeof (uap->len));

  if ((error1 != 0) && (error == 0))
   error = error1;
 }

 if (uap->connid != USER_ADDR_NULL) {
  error1 = copyout(&cid, uap->connid, sizeof (cid));

  if ((error1 != 0) && (error == 0))
   error = error1;
 }
out:
 file_drop(fd);
 if (auio != ((void*)0)) {
  uio_free(auio);
 }
 if (src != ((void*)0) && src != SA(&ss))
  FREE(src, M_SONAME);
 if (dst != ((void*)0) && dst != SA(&sd))
  FREE(dst, M_SONAME);
 return (error);
}
