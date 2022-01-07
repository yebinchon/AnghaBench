
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct TYPE_3__ {int pktsched_ptype; void* pktsched_pkt; int pktsched_plen; } ;
typedef TYPE_1__ pktsched_pkt_t ;
typedef int classq_pkt_type_t ;



 int VERIFY (int ) ;
 int m_pktlen (struct mbuf*) ;

void
pktsched_pkt_encap(pktsched_pkt_t *pkt, classq_pkt_type_t ptype, void *pp)
{
 pkt->pktsched_ptype = ptype;
 pkt->pktsched_pkt = pp;

 switch (ptype) {
 case 128:
  pkt->pktsched_plen =
      (uint32_t)m_pktlen((struct mbuf *)pkt->pktsched_pkt);
  break;


 default:
  VERIFY(0);

 }
}
