
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {int * ifcq_request; int * ifcq_dequeue_sc; int * ifcq_dequeue; int * ifcq_enqueue; int * ifcq_disc; int ifcq_type; } ;


 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int PKTSCHEDT_NONE ;
 int VERIFY (int ) ;

int
ifclassq_detach(struct ifclassq *ifq)
{
 IFCQ_LOCK_ASSERT_HELD(ifq);

 VERIFY(ifq->ifcq_disc == ((void*)0));

 ifq->ifcq_type = PKTSCHEDT_NONE;
 ifq->ifcq_disc = ((void*)0);
 ifq->ifcq_enqueue = ((void*)0);
 ifq->ifcq_dequeue = ((void*)0);
 ifq->ifcq_dequeue_sc = ((void*)0);
 ifq->ifcq_request = ((void*)0);

 return (0);
}
