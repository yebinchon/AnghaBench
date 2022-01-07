
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct ifclassq {TYPE_1__* ifcq_disc_slots; int ifcq_disc; } ;
struct TYPE_6__ {void* pktsched_pkt; int pktsched_ptype; } ;
typedef TYPE_2__ pktsched_pkt_t ;
typedef int pkt ;
typedef int mbuf_svc_class_t ;
typedef int classq_pkt_type_t ;
struct TYPE_5__ {int cl; } ;


 scalar_t__ IFCQ_SC_MAX ;
 scalar_t__ MBUF_SCIDX (int ) ;
 int VERIFY (int) ;
 int bzero (TYPE_2__*,int) ;
 int tcq_dequeue_cl (int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static void *
tcq_dequeue_tc_ifclassq(struct ifclassq *ifq, mbuf_svc_class_t sc,
    classq_pkt_type_t *ptype)
{
 pktsched_pkt_t pkt;
 u_int32_t i = MBUF_SCIDX(sc);

 VERIFY((u_int32_t)i < IFCQ_SC_MAX);

 bzero(&pkt, sizeof (pkt));
 (tcq_dequeue_cl(ifq->ifcq_disc, ifq->ifcq_disc_slots[i].cl, sc, &pkt));
 *ptype = pkt.pktsched_ptype;
 return (pkt.pktsched_pkt);
}
