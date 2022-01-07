
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vnop_write_args {int a_ioflag; TYPE_3__* a_vp; TYPE_2__* a_uio; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_6__ {TYPE_1__* v_fifoinfo; } ;
struct TYPE_5__ {scalar_t__ uio_rw; } ;
struct TYPE_4__ {struct socket* fi_writesock; } ;


 int IO_NDELAY ;
 int MSG_NBIO ;
 scalar_t__ UIO_WRITE ;
 int lock_vnode_and_post (TYPE_3__*,int ) ;
 int panic (char*) ;
 int sosend (struct socket*,struct sockaddr*,TYPE_2__*,int *,struct mbuf*,int ) ;

int
fifo_write(struct vnop_write_args *ap)
{
 struct socket *wso = ap->a_vp->v_fifoinfo->fi_writesock;
 int error;





 error = sosend(wso, (struct sockaddr *)0, ap->a_uio, ((void*)0),
         (struct mbuf *)0, (ap->a_ioflag & IO_NDELAY) ? MSG_NBIO : 0);
 if (error == 0)
  lock_vnode_and_post(ap->a_vp, 0);

 return (error);
}
