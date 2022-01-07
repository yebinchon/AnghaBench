
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
struct vnop_read_args {int a_ioflag; TYPE_3__* a_vp; struct uio* a_uio; } ;
struct uio {scalar_t__ uio_rw; } ;
struct TYPE_5__ {scalar_t__ sb_cc; } ;
struct socket {int so_state; TYPE_2__ so_rcv; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_6__ {TYPE_1__* v_fifoinfo; } ;
struct TYPE_4__ {int fi_writers; struct socket* fi_readsock; } ;


 int EWOULDBLOCK ;
 int IO_NDELAY ;
 int MSG_NBIO ;
 int SS_CANTRCVMORE ;
 scalar_t__ UIO_READ ;
 int lock_vnode_and_post (TYPE_3__*,int ) ;
 int panic (char*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soreceive (struct socket*,struct sockaddr**,struct uio*,struct mbuf**,struct mbuf**,int*) ;
 scalar_t__ uio_resid (struct uio*) ;

int
fifo_read(struct vnop_read_args *ap)
{
 struct uio *uio = ap->a_uio;
 struct socket *rso = ap->a_vp->v_fifoinfo->fi_readsock;
 user_ssize_t startresid;
 int error;
 int rflags;





 if (uio_resid(uio) == 0)
  return (0);

 rflags = (ap->a_ioflag & IO_NDELAY) ? MSG_NBIO : 0;

 startresid = uio_resid(uio);






 error = 0;
 if (ap->a_vp->v_fifoinfo->fi_writers < 1) {
  socket_lock(rso, 1);
  error = (rso->so_rcv.sb_cc == 0) ? EWOULDBLOCK : 0;
  socket_unlock(rso, 1);
 }


 if (error != EWOULDBLOCK) {
  error = soreceive(rso, (struct sockaddr **)0, uio, (struct mbuf **)0,
      (struct mbuf **)0, &rflags);
  if (error == 0)
   lock_vnode_and_post(ap->a_vp, 0);
 }
 else {

  error = 0;
 }



 if (uio_resid(uio) == startresid) {
  socket_lock(rso, 1);
  rso->so_state &= ~SS_CANTRCVMORE;
  socket_unlock(rso, 1);
 }
 return (error);
}
