
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; scalar_t__ so_pcb; } ;
struct rawcb {struct socket* rcb_socket; scalar_t__ rcb_laddr; } ;
typedef int caddr_t ;


 int FREE (int ,int ) ;
 int LIST_REMOVE (struct rawcb*,int ) ;
 int M_PCB ;
 int SOF_PCBCLEARING ;
 int dtom (scalar_t__) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_try_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int list ;
 int m_freem (int ) ;
 int raw_mtx ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int sofree (struct socket*) ;

void
raw_detach(struct rawcb *rp)
{
 struct socket *so = rp->rcb_socket;

 so->so_pcb = 0;
 so->so_flags |= SOF_PCBCLEARING;
 sofree(so);
 if (!lck_mtx_try_lock(raw_mtx)) {
  socket_unlock(so, 0);
  lck_mtx_lock(raw_mtx);
  socket_lock(so, 0);
 }
 LIST_REMOVE(rp, list);
 lck_mtx_unlock(raw_mtx);





 rp->rcb_socket = ((void*)0);
 FREE((caddr_t)(rp), M_PCB);
}
