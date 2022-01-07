
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct tcq_if {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_type; TYPE_1__* ifcq_disc_slots; struct tcq_if* ifcq_disc; } ;
struct if_ifclassq_stats {int ifqs_tcq_stats; } ;
struct TYPE_2__ {int qid; } ;


 int EINVAL ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 size_t IFCQ_SC_MAX ;
 scalar_t__ PKTSCHEDT_TCQ ;
 int VERIFY (int) ;
 int tcq_get_class_stats (struct tcq_if*,int ,int *) ;

int
tcq_getqstats_ifclassq(struct ifclassq *ifq, u_int32_t slot,
    struct if_ifclassq_stats *ifqs)
{
 struct tcq_if *tif = ifq->ifcq_disc;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(ifq->ifcq_type == PKTSCHEDT_TCQ);

 if (slot >= IFCQ_SC_MAX)
  return (EINVAL);

 return (tcq_get_class_stats(tif, ifq->ifcq_disc_slots[slot].qid,
     &ifqs->ifqs_tcq_stats));
}
