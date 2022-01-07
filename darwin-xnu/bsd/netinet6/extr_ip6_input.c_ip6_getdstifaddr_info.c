
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int pkt_flags; int dst_iff; int dst_ifindex; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;
 int PKTF_IFAINFO ;
 int VERIFY (int) ;

int
ip6_getdstifaddr_info(struct mbuf *m, uint32_t *dst_idx, uint32_t *ia6f)
{
 VERIFY(m->m_flags & M_PKTHDR);

 if (!(m->m_pkthdr.pkt_flags & PKTF_IFAINFO))
  return (-1);

 if (dst_idx != ((void*)0))
  *dst_idx = m->m_pkthdr.dst_ifindex;

 if (ia6f != ((void*)0))
  *ia6f = m->m_pkthdr.dst_iff;

 return (0);
}
