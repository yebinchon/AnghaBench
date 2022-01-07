
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_2__ {int sp_protocol; int sp_family; } ;
struct rawcb {TYPE_1__ rcb_proto; struct socket* rcb_socket; } ;


 int ENOBUFS ;
 int LIST_INSERT_HEAD (int *,struct rawcb*,int ) ;
 int SOCK_DOM (struct socket*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int list ;
 int raw_mtx ;
 int raw_recvspace ;
 int raw_sendspace ;
 int rawcb_list ;
 int soreserve (struct socket*,int ,int ) ;
 struct rawcb* sotorawcb (struct socket*) ;

int
raw_attach(struct socket *so, int proto)
{
 struct rawcb *rp = sotorawcb(so);
 int error;






 if (rp == 0)
  return (ENOBUFS);
 error = soreserve(so, raw_sendspace, raw_recvspace);
 if (error)
  return (error);
 rp->rcb_socket = so;
 rp->rcb_proto.sp_family = SOCK_DOM(so);
 rp->rcb_proto.sp_protocol = proto;
 lck_mtx_lock(raw_mtx);
 LIST_INSERT_HEAD(&rawcb_list, rp, list);
 lck_mtx_unlock(raw_mtx);
 return (0);
}
