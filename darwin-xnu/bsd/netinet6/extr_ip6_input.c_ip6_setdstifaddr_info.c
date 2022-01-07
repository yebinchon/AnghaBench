
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int dst_iff; int pkt_flags; scalar_t__ dst_ifindex; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct in6_ifaddr {int ia6_flags; TYPE_1__* ia_ifp; } ;
struct TYPE_3__ {scalar_t__ if_index; } ;


 int M_PKTHDR ;
 int PKTF_IFAINFO ;
 int VERIFY (int) ;

void
ip6_setdstifaddr_info(struct mbuf *m, uint32_t dst_idx, struct in6_ifaddr *ia6)
{
 VERIFY(m->m_flags & M_PKTHDR);






 if (ia6 != ((void*)0)) {
  m->m_pkthdr.pkt_flags |= PKTF_IFAINFO;
  m->m_pkthdr.dst_ifindex = ia6->ia_ifp->if_index;


  m->m_pkthdr.dst_iff = (ia6->ia6_flags & 0xffff);
 } else {
  m->m_pkthdr.dst_iff = 0;
  m->m_pkthdr.dst_ifindex = dst_idx;
  if (dst_idx != 0)
   m->m_pkthdr.pkt_flags |= PKTF_IFAINFO;
 }
}
