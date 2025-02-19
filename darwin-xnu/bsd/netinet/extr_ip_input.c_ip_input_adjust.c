
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int csum_flags; int pkt_flags; scalar_t__ csum_rx_start; scalar_t__ len; scalar_t__ csum_data; int csum_rx_val; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
struct ip {scalar_t__ ip_len; int ip_off; scalar_t__ ip_p; } ;
struct ifnet {int if_flags; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int ips_adj; int ips_adj_hwcsum_clr; } ;


 int ASSERT (int) ;
 int CSUM_DATA_VALID ;
 int CSUM_PARTIAL ;
 scalar_t__ FALSE ;
 int IFF_LOOPBACK ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IP_MF ;
 int IP_OFFMASK ;
 int PKTF_LOOP ;
 scalar_t__ TRUE ;
 scalar_t__ ip_adj_clear_hwcksum ;
 scalar_t__ ip_adj_partial_sum ;
 TYPE_2__ ipstat ;
 int m_adj (struct mbuf*,scalar_t__) ;
 int m_adj_sum16 (struct mbuf*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ m_pktlen (struct mbuf*) ;

__attribute__((used)) static void
ip_input_adjust(struct mbuf *m, struct ip *ip, struct ifnet *inifp)
{
 boolean_t adjust = TRUE;

 ASSERT(m_pktlen(m) > ip->ip_len);







 if (ip_adj_clear_hwcksum &&
     (m->m_pkthdr.csum_flags & CSUM_DATA_VALID) &&
     !(inifp->if_flags & IFF_LOOPBACK) &&
     !(m->m_pkthdr.pkt_flags & PKTF_LOOP)) {
  m->m_pkthdr.csum_flags &= ~CSUM_DATA_VALID;
  m->m_pkthdr.csum_data = 0;
  ipstat.ips_adj_hwcsum_clr++;
 }
 if (ip_adj_partial_sum &&
     (m->m_pkthdr.csum_flags & (CSUM_DATA_VALID|CSUM_PARTIAL)) ==
     (CSUM_DATA_VALID|CSUM_PARTIAL)) {
  m->m_pkthdr.csum_rx_val = m_adj_sum16(m,
      m->m_pkthdr.csum_rx_start, m->m_pkthdr.csum_rx_start,
      (ip->ip_len - m->m_pkthdr.csum_rx_start),
      m->m_pkthdr.csum_rx_val);
 } else if ((m->m_pkthdr.csum_flags &
     (CSUM_DATA_VALID|CSUM_PARTIAL)) ==
     (CSUM_DATA_VALID|CSUM_PARTIAL)) {
  if ((ip->ip_off & (IP_MF | IP_OFFMASK)) == 0 &&
      (ip->ip_p == IPPROTO_TCP || ip->ip_p == IPPROTO_UDP)) {
   adjust = FALSE;
  } else {
   m->m_pkthdr.csum_flags &= ~CSUM_DATA_VALID;
   m->m_pkthdr.csum_data = 0;
   ipstat.ips_adj_hwcsum_clr++;
  }
 }

 if (adjust) {
  ipstat.ips_adj++;
  if (m->m_len == m->m_pkthdr.len) {
   m->m_len = ip->ip_len;
   m->m_pkthdr.len = ip->ip_len;
  } else {
   m_adj(m, ip->ip_len - m->m_pkthdr.len);
  }
 }
}
