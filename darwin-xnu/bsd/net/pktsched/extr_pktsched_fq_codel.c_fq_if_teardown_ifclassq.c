
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {scalar_t__ ifcq_type; int * ifcq_disc; } ;
typedef int fq_if_t ;


 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 scalar_t__ PKTSCHEDT_FQ_CODEL ;
 int VERIFY (int) ;
 int fq_if_destroy (int *) ;
 int ifclassq_detach (struct ifclassq*) ;

int
fq_if_teardown_ifclassq(struct ifclassq *ifq)
{
 fq_if_t *fqs = (fq_if_t *)ifq->ifcq_disc;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(fqs != ((void*)0) && ifq->ifcq_type == PKTSCHEDT_FQ_CODEL);

 fq_if_destroy(fqs);
 ifq->ifcq_disc = ((void*)0);
 return (ifclassq_detach(ifq));
}
