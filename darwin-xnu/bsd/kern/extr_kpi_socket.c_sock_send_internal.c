
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * uio_t ;
typedef int uio_buf ;
struct sockaddr {int dummy; } ;
struct msghdr {int msg_iovlen; scalar_t__ msg_name; scalar_t__ msg_controllen; scalar_t__ msg_control; struct iovec* msg_iov; } ;
struct TYPE_7__ {int len; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
struct iovec {int iov_len; int iov_base; } ;
struct cmsghdr {int dummy; } ;
typedef TYPE_4__* socket_t ;
typedef struct mbuf* mbuf_t ;
typedef int errno_t ;
struct TYPE_10__ {TYPE_3__* so_proto; } ;
struct TYPE_9__ {TYPE_2__* pr_usrreqs; } ;
struct TYPE_8__ {int (* pru_sosend ) (TYPE_4__*,struct sockaddr*,int *,struct mbuf*,struct mbuf*,int) ;} ;


 int CAST_USER_ADDR_T (int ) ;
 int EINTR ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTART ;
 int EWOULDBLOCK ;
 size_t MLEN ;
 int MT_CONTROL ;
 int M_NOWAIT ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int caddr_t ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_get (int ,int ) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 int mtod (struct mbuf*,int ) ;
 int stub1 (TYPE_4__*,struct sockaddr*,int *,struct mbuf*,struct mbuf*,int) ;
 int uio_addiov (int *,int ,int ) ;
 int * uio_createwithbuffer (int,int ,int ,int ,char*,int) ;
 int uio_resid (int *) ;

errno_t
sock_send_internal(socket_t sock, const struct msghdr *msg, mbuf_t data,
    int flags, size_t *sentlen)
{
 uio_t auio = ((void*)0);
 struct mbuf *control = ((void*)0);
 int error = 0;
 int datalen = 0;
 char uio_buf[ UIO_SIZEOF((msg != ((void*)0) ? msg->msg_iovlen : 1)) ];

 if (sock == ((void*)0)) {
  error = EINVAL;
  goto errorout;
 }

 if (data == ((void*)0) && msg != ((void*)0)) {
  struct iovec *tempp = msg->msg_iov;

  auio = uio_createwithbuffer(msg->msg_iovlen, 0,
      UIO_SYSSPACE, UIO_WRITE, &uio_buf[0], sizeof (uio_buf));
  if (tempp != ((void*)0)) {
   int i;

   for (i = 0; i < msg->msg_iovlen; i++) {
    uio_addiov(auio,
        CAST_USER_ADDR_T((tempp + i)->iov_base),
        (tempp + i)->iov_len);
   }

   if (uio_resid(auio) < 0) {
    error = EINVAL;
    goto errorout;
   }
  }
 }

 if (sentlen != ((void*)0))
  *sentlen = 0;

 if (auio != ((void*)0))
  datalen = uio_resid(auio);
 else
  datalen = data->m_pkthdr.len;

 if (msg != ((void*)0) && msg->msg_control) {
  if ((size_t)msg->msg_controllen < sizeof (struct cmsghdr)) {
   error = EINVAL;
   goto errorout;
  }

  if ((size_t)msg->msg_controllen > MLEN) {
   error = EINVAL;
   goto errorout;
  }

  control = m_get(M_NOWAIT, MT_CONTROL);
  if (control == ((void*)0)) {
   error = ENOMEM;
   goto errorout;
  }
  memcpy(mtod(control, caddr_t), msg->msg_control,
      msg->msg_controllen);
  control->m_len = msg->msg_controllen;
 }

 error = sock->so_proto->pr_usrreqs->pru_sosend(sock, msg != ((void*)0) ?
     (struct sockaddr *)msg->msg_name : ((void*)0), auio, data,
     control, flags);
 if (auio != ((void*)0) && uio_resid(auio) != datalen &&
     (error == ERESTART || error == EINTR || error == EWOULDBLOCK))
  error = 0;

 if (error == 0 && sentlen != ((void*)0)) {
  if (auio != ((void*)0))
   *sentlen = datalen - uio_resid(auio);
  else
   *sentlen = datalen;
 }

 return (error);






errorout:
 if (control)
  m_freem(control);
 if (data)
  m_freem(data);
 if (sentlen)
  *sentlen = 0;
 return (error);
}
