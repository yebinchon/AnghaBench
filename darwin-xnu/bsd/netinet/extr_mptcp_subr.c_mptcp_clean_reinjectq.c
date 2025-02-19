
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mptses {struct mbuf* mpte_reinjectq; struct mptcb* mpte_mptcb; } ;
struct mptcb {int mpt_snduna; } ;
struct TYPE_2__ {scalar_t__ mp_rlen; scalar_t__ mp_dsn; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;


 scalar_t__ MPTCP_SEQ_GEQ (scalar_t__,int ) ;
 scalar_t__ MPTCP_SEQ_GT (scalar_t__,int ) ;
 int m_freem (struct mbuf*) ;
 int mpte_lock_assert_held (struct mptses*) ;

void
mptcp_clean_reinjectq(struct mptses *mpte)
{
 struct mptcb *mp_tp = mpte->mpte_mptcb;

 mpte_lock_assert_held(mpte);

 while (mpte->mpte_reinjectq) {
  struct mbuf *m = mpte->mpte_reinjectq;

  if (MPTCP_SEQ_GEQ(m->m_pkthdr.mp_dsn, mp_tp->mpt_snduna) ||
      MPTCP_SEQ_GT(m->m_pkthdr.mp_dsn + m->m_pkthdr.mp_rlen, mp_tp->mpt_snduna))
   break;

  mpte->mpte_reinjectq = m->m_nextpkt;
  m->m_nextpkt = ((void*)0);
  m_freem(m);
 }
}
