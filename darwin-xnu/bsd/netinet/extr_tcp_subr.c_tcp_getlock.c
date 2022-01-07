
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ so_usecount; int so_flags; TYPE_2__* so_proto; scalar_t__ so_pcb; } ;
struct mptcb {int mpt_mpte; } ;
struct inpcb {int inpcb_mtx; } ;
typedef int lck_mtx_t ;
struct TYPE_4__ {TYPE_1__* pr_domain; } ;
struct TYPE_3__ {int * dom_mtx; } ;


 int SOF_MP_SUBFLOW ;
 int * mpte_getlock (int ,int) ;
 int panic (char*,struct socket*,scalar_t__,...) ;
 int solockhistory_nr (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int sototcpcb (struct socket*) ;
 struct mptcb* tptomptp (int ) ;

lck_mtx_t *
tcp_getlock(struct socket *so, int flags)
{
 struct inpcb *inp = sotoinpcb(so);

 if (so->so_pcb) {
  if (so->so_usecount < 0)
   panic("tcp_getlock: so=%p usecount=%x lrh= %s\n",
       so, so->so_usecount, solockhistory_nr(so));

  if (so->so_flags & SOF_MP_SUBFLOW) {
   struct mptcb *mp_tp = tptomptp(sototcpcb(so));

   return (mpte_getlock(mp_tp->mpt_mpte, flags));
  } else {
   return (&inp->inpcb_mtx);
  }
 } else {
  panic("tcp_getlock: so=%p NULL so_pcb %s\n",
      so, solockhistory_nr(so));
  return (so->so_proto->pr_domain->dom_mtx);
 }
}
