
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_flags; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int FALSE ;
 int M_PKTHDR ;
 int PKTF_KEEPALIVE ;

bool
necp_get_is_keepalive_from_packet(struct mbuf *packet)
{
 if (packet == ((void*)0) || !(packet->m_flags & M_PKTHDR)) {
  return (FALSE);
 }

 return (packet->m_pkthdr.pkt_flags & PKTF_KEEPALIVE);
}
