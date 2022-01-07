
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {struct ifclassq* tif_ifq; } ;
struct ifclassq {int dummy; } ;


 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int tcq_destroy_locked (struct tcq_if*) ;

int
tcq_destroy(struct tcq_if *tif)
{
 struct ifclassq *ifq = tif->tif_ifq;
 int err;

 IFCQ_LOCK(ifq);
 err = tcq_destroy_locked(tif);
 IFCQ_UNLOCK(ifq);

 return (err);
}
