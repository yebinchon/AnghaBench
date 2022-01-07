
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcq_if {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_type; TYPE_1__* ifcq_disc_slots; struct tcq_if* ifcq_disc; } ;
struct TYPE_2__ {int * cl; scalar_t__ qid; } ;


 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_SC_MAX ;
 scalar_t__ PKTSCHEDT_TCQ ;
 int VERIFY (int) ;
 int ifclassq_detach (struct ifclassq*) ;
 int tcq_destroy_locked (struct tcq_if*) ;

int
tcq_teardown_ifclassq(struct ifclassq *ifq)
{
 struct tcq_if *tif = ifq->ifcq_disc;
 int i;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(tif != ((void*)0) && ifq->ifcq_type == PKTSCHEDT_TCQ);

 (void) tcq_destroy_locked(tif);

 ifq->ifcq_disc = ((void*)0);
 for (i = 0; i < IFCQ_SC_MAX; i++) {
  ifq->ifcq_disc_slots[i].qid = 0;
  ifq->ifcq_disc_slots[i].cl = ((void*)0);
 }

 return (ifclassq_detach(ifq));
}
