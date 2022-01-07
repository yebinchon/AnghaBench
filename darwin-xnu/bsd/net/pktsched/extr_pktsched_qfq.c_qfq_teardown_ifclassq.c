
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qfq_if {int dummy; } ;
struct ifclassq {scalar_t__ ifcq_type; TYPE_1__* ifcq_disc_slots; struct qfq_if* ifcq_disc; } ;
struct TYPE_2__ {int * cl; scalar_t__ qid; } ;


 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_SC_MAX ;
 scalar_t__ PKTSCHEDT_QFQ ;
 int VERIFY (int) ;
 int ifclassq_detach (struct ifclassq*) ;
 int qfq_destroy_locked (struct qfq_if*) ;

int
qfq_teardown_ifclassq(struct ifclassq *ifq)
{
 struct qfq_if *qif = ifq->ifcq_disc;
 int i;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(qif != ((void*)0) && ifq->ifcq_type == PKTSCHEDT_QFQ);

 (void) qfq_destroy_locked(qif);

 ifq->ifcq_disc = ((void*)0);
 for (i = 0; i < IFCQ_SC_MAX; i++) {
  ifq->ifcq_disc_slots[i].qid = 0;
  ifq->ifcq_disc_slots[i].cl = ((void*)0);
 }

 return (ifclassq_detach(ifq));
}
