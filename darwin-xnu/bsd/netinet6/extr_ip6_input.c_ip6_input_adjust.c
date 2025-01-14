
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int csum_flags; int pkt_flags; scalar_t__ csum_rx_start; scalar_t__ len; scalar_t__ csum_data; int csum_rx_val; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
struct ip6_hdr {scalar_t__ ip6_nxt; } ;
struct ifnet {int if_flags; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int ip6s_adj; int ip6s_adj_hwcsum_clr; } ;


 int ASSERT (int) ;
 int CSUM_DATA_VALID ;
 int CSUM_PARTIAL ;
 scalar_t__ FALSE ;
 int IFF_LOOPBACK ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int PKTF_LOOP ;
 scalar_t__ TRUE ;
 scalar_t__ ip6_adj_clear_hwcksum ;
 scalar_t__ ip6_adj_partial_sum ;
 TYPE_2__ ip6stat ;
 int m_adj (struct mbuf*,scalar_t__) ;
 int m_adj_sum16 (struct mbuf*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ m_pktlen (struct mbuf*) ;

__attribute__((used)) static void
ip6_input_adjust(struct mbuf *m, struct ip6_hdr *ip6, uint32_t plen,
    struct ifnet *inifp)
{
 boolean_t adjust = TRUE;
 uint32_t tot_len = sizeof (*ip6) + plen;

 ASSERT(m_pktlen(m) > tot_len);







 if (ip6_adj_clear_hwcksum &&
     (m->m_pkthdr.csum_flags & CSUM_DATA_VALID) &&
     !(inifp->if_flags & IFF_LOOPBACK) &&
     !(m->m_pkthdr.pkt_flags & PKTF_LOOP)) {
  m->m_pkthdr.csum_flags &= ~CSUM_DATA_VALID;
  m->m_pkthdr.csum_data = 0;
  ip6stat.ip6s_adj_hwcsum_clr++;
 }
 if (ip6_adj_partial_sum &&
     (m->m_pkthdr.csum_flags & (CSUM_DATA_VALID|CSUM_PARTIAL)) ==
     (CSUM_DATA_VALID|CSUM_PARTIAL)) {
  m->m_pkthdr.csum_rx_val = m_adj_sum16(m,
      m->m_pkthdr.csum_rx_start, m->m_pkthdr.csum_rx_start,
      (tot_len - m->m_pkthdr.csum_rx_start),
      m->m_pkthdr.csum_rx_val);
 } else if ((m->m_pkthdr.csum_flags &
     (CSUM_DATA_VALID|CSUM_PARTIAL)) ==
     (CSUM_DATA_VALID|CSUM_PARTIAL)) {
  if (ip6->ip6_nxt == IPPROTO_TCP ||
      ip6->ip6_nxt == IPPROTO_UDP) {
   adjust = FALSE;
  } else {
   m->m_pkthdr.csum_flags &= ~CSUM_DATA_VALID;
   m->m_pkthdr.csum_data = 0;
   ip6stat.ip6s_adj_hwcsum_clr++;
  }
 }

 if (adjust) {
  ip6stat.ip6s_adj++;
  if (m->m_len == m->m_pkthdr.len) {
   m->m_len = tot_len;
   m->m_pkthdr.len = tot_len;
  } else {
   m_adj(m, tot_len - m->m_pkthdr.len);
  }
 }
}
