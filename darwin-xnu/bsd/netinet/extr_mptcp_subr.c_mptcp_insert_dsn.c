
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mptcb {int mpt_sndmax; int mpt_mpte; } ;
struct mppcb {int dummy; } ;
struct mpp_mtp {struct mptcb mtcb; } ;
struct TYPE_2__ {int pkt_flags; scalar_t__ mp_rlen; int mp_dsn; } ;
struct mbuf {int m_flags; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;
 int PKTF_MPSO ;
 int PKTF_MPTCP ;
 int VERIFY (int) ;
 int __IGNORE_WCASTALIGN (struct mptcb*) ;
 scalar_t__ m_pktlen (struct mbuf*) ;
 int mpte_lock_assert_held (int ) ;

void
mptcp_insert_dsn(struct mppcb *mpp, struct mbuf *m)
{
 struct mptcb *mp_tp;

 if (m == ((void*)0))
  return;

 __IGNORE_WCASTALIGN(mp_tp = &((struct mpp_mtp *)mpp)->mtcb);
 mpte_lock_assert_held(mp_tp->mpt_mpte);

 while (m) {
  VERIFY(m->m_flags & M_PKTHDR);
  m->m_pkthdr.pkt_flags |= (PKTF_MPTCP | PKTF_MPSO);
  m->m_pkthdr.mp_dsn = mp_tp->mpt_sndmax;
  m->m_pkthdr.mp_rlen = m_pktlen(m);
  mp_tp->mpt_sndmax += m_pktlen(m);
  m = m->m_next;
 }
}
