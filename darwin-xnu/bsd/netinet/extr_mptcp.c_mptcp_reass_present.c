
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tseg_qent {scalar_t__ tqe_len; TYPE_3__* tqe_m; } ;
struct socket {int so_state; } ;
struct mptcb {scalar_t__ mpt_state; scalar_t__ mpt_rcvnxt; int mpt_flags; int mpt_segq; int mpt_reassqlen; } ;
struct TYPE_9__ {TYPE_1__* mpp_pcbe; } ;
struct TYPE_7__ {scalar_t__ mp_dsn; int pkt_flags; } ;
struct TYPE_8__ {TYPE_2__ m_pkthdr; } ;
struct TYPE_6__ {struct mptcb* mpte_mptcb; } ;


 struct tseg_qent* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct tseg_qent*,int ) ;
 int MPTCPF_REASS_INPROG ;
 scalar_t__ MPTCPS_ESTABLISHED ;
 int PKTF_MPTCP_DFIN ;
 int SS_CANTRCVMORE ;
 int m_freem (TYPE_3__*) ;
 TYPE_4__* mpsotomppcb (struct socket*) ;
 scalar_t__ sbappendstream_rcvdemux (struct socket*,TYPE_3__*,int ,int ) ;
 int sorwakeup (struct socket*) ;
 int tcp_reass_zone ;
 int tqe_q ;
 int zfree (int ,struct tseg_qent*) ;

__attribute__((used)) static int
mptcp_reass_present(struct socket *mp_so)
{
 struct mptcb *mp_tp = mpsotomppcb(mp_so)->mpp_pcbe->mpte_mptcb;
 struct tseg_qent *q;
 int dowakeup = 0;
 int flags = 0;





 if (mp_tp->mpt_state < MPTCPS_ESTABLISHED)
  return (flags);
 q = LIST_FIRST(&mp_tp->mpt_segq);
 if (!q || q->tqe_m->m_pkthdr.mp_dsn != mp_tp->mpt_rcvnxt)
  return (flags);






 if (mp_tp->mpt_flags & MPTCPF_REASS_INPROG)
  return (flags);

 mp_tp->mpt_flags |= MPTCPF_REASS_INPROG;

 do {
  mp_tp->mpt_rcvnxt += q->tqe_len;
  LIST_REMOVE(q, tqe_q);
  if (mp_so->so_state & SS_CANTRCVMORE) {
   m_freem(q->tqe_m);
  } else {
   flags = !!(q->tqe_m->m_pkthdr.pkt_flags & PKTF_MPTCP_DFIN);
   if (sbappendstream_rcvdemux(mp_so, q->tqe_m, 0, 0))
    dowakeup = 1;
  }
  zfree(tcp_reass_zone, q);
  mp_tp->mpt_reassqlen--;
  q = LIST_FIRST(&mp_tp->mpt_segq);
 } while (q && q->tqe_m->m_pkthdr.mp_dsn == mp_tp->mpt_rcvnxt);
 mp_tp->mpt_flags &= ~MPTCPF_REASS_INPROG;

 if (dowakeup)
  sorwakeup(mp_so);
 return (flags);

}
