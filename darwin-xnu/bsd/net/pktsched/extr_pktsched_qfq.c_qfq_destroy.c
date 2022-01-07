
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_if {struct ifclassq* qif_ifq; } ;
struct ifclassq {int dummy; } ;


 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int qfq_destroy_locked (struct qfq_if*) ;

int
qfq_destroy(struct qfq_if *qif)
{
 struct ifclassq *ifq = qif->qif_ifq;
 int err;

 IFCQ_LOCK(ifq);
 err = qfq_destroy_locked(qif);
 IFCQ_UNLOCK(ifq);

 return (err);
}
