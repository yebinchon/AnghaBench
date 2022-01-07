
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tcq_if {struct tcq_class* tif_default; struct ifclassq* tif_ifq; } ;
struct tcq_class {int cl_dropcnt; int cl_q; struct tcq_if* cl_tif; } ;
struct pf_mtag {int dummy; } ;
struct ifclassq {int dummy; } ;
struct TYPE_5__ {scalar_t__ pktsched_ptype; } ;
typedef TYPE_1__ pktsched_pkt_t ;


 int CLASSQEQ_DROP ;
 int CLASSQEQ_DROP_FC ;
 int CLASSQEQ_DROP_SP ;
 int CLASSQEQ_SUCCESS_FC ;
 int IFCQ_CONVERT_LOCK (struct ifclassq*) ;
 int IFCQ_DROP_ADD (struct ifclassq*,int,int) ;
 int IFCQ_INC_BYTES (struct ifclassq*,int) ;
 int IFCQ_INC_LEN (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int PKTCNTR_ADD (int *,int,int) ;
 int VERIFY (int) ;
 int pktsched_get_pkt_len (TYPE_1__*) ;
 scalar_t__ qptype (int *) ;
 int tcq_addq (struct tcq_class*,TYPE_1__*,struct pf_mtag*) ;
 struct tcq_class* tcq_clh_to_clp (struct tcq_if*,int ) ;

int
tcq_enqueue(struct tcq_if *tif, struct tcq_class *cl, pktsched_pkt_t *pkt,
    struct pf_mtag *t)
{
 struct ifclassq *ifq = tif->tif_ifq;
 int len, ret;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(cl == ((void*)0) || cl->cl_tif == tif);

 if (cl == ((void*)0)) {
  cl = tcq_clh_to_clp(tif, 0);
  if (cl == ((void*)0)) {
   cl = tif->tif_default;
   if (cl == ((void*)0)) {
    IFCQ_CONVERT_LOCK(ifq);
    return (CLASSQEQ_DROP);
   }
  }
 }

 VERIFY(pkt->pktsched_ptype == qptype(&cl->cl_q));
 len = pktsched_get_pkt_len(pkt);

 ret = tcq_addq(cl, pkt, t);
 if ((ret != 0) && (ret != CLASSQEQ_SUCCESS_FC)) {
  VERIFY(ret == CLASSQEQ_DROP ||
      ret == CLASSQEQ_DROP_FC ||
      ret == CLASSQEQ_DROP_SP);
  PKTCNTR_ADD(&cl->cl_dropcnt, 1, len);
  IFCQ_DROP_ADD(ifq, 1, len);
  return (ret);
 }
 IFCQ_INC_LEN(ifq);
 IFCQ_INC_BYTES(ifq, len);


 return (ret);
}
