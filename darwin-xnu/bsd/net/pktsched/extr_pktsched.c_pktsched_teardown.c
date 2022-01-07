
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {int ifcq_type; int ifcq_flags; int ifcq_ifp; } ;


 int ENXIO ;
 int IFCQF_ENABLED ;
 int IFCQ_IS_EMPTY (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;




 int VERIFY (int ) ;
 int fq_if_teardown_ifclassq (struct ifclassq*) ;
 int if_qflush (int ,int) ;
 int qfq_teardown_ifclassq (struct ifclassq*) ;
 int tcq_teardown_ifclassq (struct ifclassq*) ;

int
pktsched_teardown(struct ifclassq *ifq)
{
 int error = 0;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 if_qflush(ifq->ifcq_ifp, 1);
 VERIFY(IFCQ_IS_EMPTY(ifq));

 ifq->ifcq_flags &= ~IFCQF_ENABLED;

 switch (ifq->ifcq_type) {
 case 130:
  break;

 case 128:
  error = tcq_teardown_ifclassq(ifq);
  break;

 case 129:
  error = qfq_teardown_ifclassq(ifq);
  break;

 case 131:
  error = fq_if_teardown_ifclassq(ifq);
  break;
 default:
  error = ENXIO;
  break;
 }
 return (error);
}
