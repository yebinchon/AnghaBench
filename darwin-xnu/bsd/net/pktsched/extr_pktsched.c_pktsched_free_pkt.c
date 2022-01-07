
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pktsched_ptype; scalar_t__ pktsched_plen; int * pktsched_pkt; } ;
typedef TYPE_1__ pktsched_pkt_t ;



 int VERIFY (int ) ;
 int m_freem (int *) ;

void
pktsched_free_pkt(pktsched_pkt_t *pkt)
{
 switch (pkt->pktsched_ptype) {
 case 128:
  m_freem(pkt->pktsched_pkt);
  break;


 default:
  VERIFY(0);

 }

 pkt->pktsched_pkt = ((void*)0);
 pkt->pktsched_plen = 0;
 pkt->pktsched_ptype = 0;
}
