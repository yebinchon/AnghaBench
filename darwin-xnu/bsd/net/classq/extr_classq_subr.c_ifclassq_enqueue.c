
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {int dummy; } ;
typedef int errno_t ;
typedef int classq_pkt_type_t ;
typedef int boolean_t ;


 int IFCQ_ENQUEUE (struct ifclassq*,void*,int ,int ,int *) ;
 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_LOCK_SPIN (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;


errno_t
ifclassq_enqueue(struct ifclassq *ifq, void *p, classq_pkt_type_t ptype,
    boolean_t *pdrop)
{
 errno_t err;

 switch (ptype) {
 case 128:
  IFCQ_LOCK_SPIN(ifq);
  break;

 default:
  IFCQ_LOCK(ifq);
  break;
 }

 IFCQ_ENQUEUE(ifq, p, ptype, err, pdrop);
 IFCQ_UNLOCK(ifq);
 return (err);
}
