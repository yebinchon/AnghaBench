
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {int th_flags; } ;
struct TYPE_3__ {scalar_t__ mpt_dfin; int mpt_csum; int mpt_len; int mpt_sseq; int mpt_dsn; } ;
struct tcpcb {int t_mpflags; TYPE_1__ t_rcv_map; } ;
struct TYPE_4__ {int pkt_flags; int mp_csum; int mp_rlen; int mp_rseq; int mp_dsn; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;


 int M_PKTHDR ;
 int PKTF_MPTCP ;
 int PKTF_MPTCP_DFIN ;
 int TH_FIN ;
 int TMPF_EMBED_DSN ;
 int TMPF_MPTCP_ACKNOW ;
 int TMPF_TCP_FALLBACK ;
 int VERIFY (int) ;

void
mptcp_insert_rmap(struct tcpcb *tp, struct mbuf *m, struct tcphdr *th)
{
 VERIFY(m->m_flags & M_PKTHDR);
 VERIFY(!(m->m_pkthdr.pkt_flags & PKTF_MPTCP));

 if (tp->t_mpflags & TMPF_EMBED_DSN) {
  m->m_pkthdr.mp_dsn = tp->t_rcv_map.mpt_dsn;
  m->m_pkthdr.mp_rseq = tp->t_rcv_map.mpt_sseq;
  m->m_pkthdr.mp_rlen = tp->t_rcv_map.mpt_len;
  m->m_pkthdr.mp_csum = tp->t_rcv_map.mpt_csum;
  if (tp->t_rcv_map.mpt_dfin)
   m->m_pkthdr.pkt_flags |= PKTF_MPTCP_DFIN;

  m->m_pkthdr.pkt_flags |= PKTF_MPTCP;

  tp->t_mpflags &= ~TMPF_EMBED_DSN;
  tp->t_mpflags |= TMPF_MPTCP_ACKNOW;
 } else if (tp->t_mpflags & TMPF_TCP_FALLBACK) {
  if (th->th_flags & TH_FIN)
   m->m_pkthdr.pkt_flags |= PKTF_MPTCP_DFIN;
 }
}
