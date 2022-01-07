
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {int dummy; } ;
struct ifnet {struct ifclassq if_snd; } ;


 int IFCQ_IS_EMPTY (struct ifclassq*) ;
 scalar_t__ IFCQ_IS_ENABLED (struct ifclassq*) ;
 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_PURGE (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int VERIFY (int ) ;

void
if_qflush(struct ifnet *ifp, int ifq_locked)
{
 struct ifclassq *ifq = &ifp->if_snd;

 if (!ifq_locked)
  IFCQ_LOCK(ifq);

 if (IFCQ_IS_ENABLED(ifq))
  IFCQ_PURGE(ifq);

 VERIFY(IFCQ_IS_EMPTY(ifq));

 if (!ifq_locked)
  IFCQ_UNLOCK(ifq);
}
