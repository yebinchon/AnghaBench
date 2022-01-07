
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ifclassq {int ifcq_disc; } ;
struct TYPE_4__ {void* pktsched_pkt; int pktsched_ptype; } ;
typedef TYPE_1__ pktsched_pkt_t ;
typedef int pkt ;
typedef int classq_pkt_type_t ;


 int bzero (TYPE_1__*,int) ;
 int qfq_dequeue (int ,TYPE_1__*) ;

__attribute__((used)) static void *
qfq_dequeue_ifclassq(struct ifclassq *ifq, classq_pkt_type_t *ptype)
{
 pktsched_pkt_t pkt;
 bzero(&pkt, sizeof (pkt));
 qfq_dequeue(ifq->ifcq_disc, &pkt);
 *ptype = pkt.pktsched_ptype;
 return (pkt.pktsched_pkt);
}
