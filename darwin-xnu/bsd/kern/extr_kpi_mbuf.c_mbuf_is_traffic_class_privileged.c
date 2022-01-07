
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
struct TYPE_4__ {int pkt_flags; int pkt_svc; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int MBUF_VALID_SC (int ) ;
 int M_PKTHDR ;
 int PKTF_PRIO_PRIVILEGED ;

int
mbuf_is_traffic_class_privileged(mbuf_t m)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR) ||
     !MBUF_VALID_SC(m->m_pkthdr.pkt_svc))
  return (0);

 return ((m->m_pkthdr.pkt_flags & PKTF_PRIO_PRIVILEGED) ? 1 : 0);
}
