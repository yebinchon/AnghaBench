
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uio_t ;
typedef int uio_buf ;
typedef int u_char ;
struct sockaddr {unsigned int sa_len; } ;
struct msghdr {int msg_iovlen; int msg_flags; int msg_namelen; int msg_controllen; int * msg_control; int * msg_name; struct iovec* msg_iov; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct iovec {int iov_len; int iov_base; } ;
typedef TYPE_3__* socket_t ;
typedef int mbuf_t ;
typedef int errno_t ;
struct TYPE_8__ {TYPE_2__* so_proto; } ;
struct TYPE_7__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_6__ {int (* pru_soreceive ) (TYPE_3__*,struct sockaddr**,int ,int *,struct mbuf**,int*) ;} ;


 int CAST_USER_ADDR_T (int ) ;
 int EINVAL ;
 int FREE (struct sockaddr*,int ) ;
 int MIN (int,unsigned int) ;
 int MSG_CTRUNC ;
 int M_SONAME ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int caddr_t ;
 int m_freem (struct mbuf*) ;
 int memcpy (int *,struct sockaddr*,unsigned int) ;
 struct sockaddr* mtod (struct mbuf*,int ) ;
 int stub1 (TYPE_3__*,struct sockaddr**,int ,int *,struct mbuf**,int*) ;
 int uio_addiov (int ,int ,int ) ;
 int uio_createwithbuffer (int,int ,int ,int ,char*,int) ;
 int uio_resid (int ) ;
 int uio_setresid (int ,size_t) ;

errno_t
sock_receive_internal(socket_t sock, struct msghdr *msg, mbuf_t *data,
    int flags, size_t *recvdlen)
{
 uio_t auio;
 struct mbuf *control = ((void*)0);
 int error = 0;
 int length = 0;
 struct sockaddr *fromsa = ((void*)0);
 char uio_buf[ UIO_SIZEOF((msg != ((void*)0)) ? msg->msg_iovlen : 0) ];

 if (sock == ((void*)0))
  return (EINVAL);

 auio = uio_createwithbuffer(((msg != ((void*)0)) ? msg->msg_iovlen : 0),
     0, UIO_SYSSPACE, UIO_READ, &uio_buf[0], sizeof (uio_buf));
 if (msg != ((void*)0) && data == ((void*)0)) {
  int i;
  struct iovec *tempp = msg->msg_iov;

  for (i = 0; i < msg->msg_iovlen; i++) {
   uio_addiov(auio,
       CAST_USER_ADDR_T((tempp + i)->iov_base),
       (tempp + i)->iov_len);
  }
  if (uio_resid(auio) < 0)
   return (EINVAL);
 } else if (recvdlen != ((void*)0)) {
  uio_setresid(auio, (uio_resid(auio) + *recvdlen));
 }
 length = uio_resid(auio);

 if (recvdlen != ((void*)0))
  *recvdlen = 0;


 error = sock->so_proto->pr_usrreqs->pru_soreceive(sock, &fromsa, auio,
     data, (msg && msg->msg_control) ? &control : ((void*)0), &flags);
 if (error != 0)
  goto cleanup;

 if (recvdlen != ((void*)0))
  *recvdlen = length - uio_resid(auio);
 if (msg != ((void*)0)) {
  msg->msg_flags = flags;

  if (msg->msg_name != ((void*)0)) {
   int salen;
   salen = msg->msg_namelen;
   if (msg->msg_namelen > 0 && fromsa != ((void*)0)) {
    salen = MIN(salen, fromsa->sa_len);
    memcpy(msg->msg_name, fromsa,
        msg->msg_namelen > fromsa->sa_len ?
        fromsa->sa_len : msg->msg_namelen);
   }
  }

  if (msg->msg_control != ((void*)0)) {
   struct mbuf *m = control;
   u_char *ctlbuf = msg->msg_control;
   int clen = msg->msg_controllen;

   msg->msg_controllen = 0;

   while (m != ((void*)0) && clen > 0) {
    unsigned int tocopy;

    if (clen >= m->m_len) {
     tocopy = m->m_len;
    } else {
     msg->msg_flags |= MSG_CTRUNC;
     tocopy = clen;
    }
    memcpy(ctlbuf, mtod(m, caddr_t), tocopy);
    ctlbuf += tocopy;
    clen -= tocopy;
    m = m->m_next;
   }
   msg->msg_controllen =
       (uintptr_t)ctlbuf - (uintptr_t)msg->msg_control;
  }
 }

cleanup:
 if (control != ((void*)0))
  m_freem(control);
 if (fromsa != ((void*)0))
  FREE(fromsa, M_SONAME);
 return (error);
}
