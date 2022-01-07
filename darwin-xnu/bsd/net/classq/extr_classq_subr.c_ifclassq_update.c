
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {int dummy; } ;
typedef int cqev_t ;


 int IFCQ_IS_READY (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_UPDATE (struct ifclassq*,int ) ;
 int VERIFY (int ) ;

void
ifclassq_update(struct ifclassq *ifq, cqev_t ev)
{
 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(IFCQ_IS_READY(ifq));
 IFCQ_UPDATE(ifq, ev);
}
