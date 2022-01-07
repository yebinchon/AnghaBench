
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pktsched_ptype; int pktsched_pkt; } ;
typedef TYPE_1__ pktsched_pkt_t ;
typedef int mbuf_t ;
typedef int mbuf_svc_class_t ;


 int MBUF_SC_UNSPEC ;

 int VERIFY (int ) ;
 int m_get_service_class (int ) ;

mbuf_svc_class_t
pktsched_get_pkt_svc(pktsched_pkt_t *pkt)
{
 mbuf_svc_class_t svc = MBUF_SC_UNSPEC;

 switch (pkt->pktsched_ptype) {
 case 128:
  svc = m_get_service_class((mbuf_t)pkt->pktsched_pkt);
  break;


 default:
  VERIFY(0);

 }

 return (svc);
}
