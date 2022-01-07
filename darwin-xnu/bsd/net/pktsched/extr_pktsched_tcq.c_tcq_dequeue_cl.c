
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct tcq_if {struct ifclassq* tif_ifq; } ;
struct tcq_class {int cl_xmitcnt; int cl_period; int cl_q; } ;
struct ifclassq {int dummy; } ;
struct TYPE_5__ {int * pktsched_pkt; } ;
typedef TYPE_1__ pktsched_pkt_t ;
typedef int mbuf_svc_class_t ;


 int IFCQ_DEC_BYTES (struct ifclassq*,int ) ;
 int IFCQ_DEC_LEN (struct ifclassq*) ;
 int IFCQ_IS_EMPTY (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_XMIT_ADD (struct ifclassq*,int,int ) ;
 int MBUF_SCIDX (int ) ;
 int PKTCNTR_ADD (int *,int,int ) ;
 int VERIFY (int) ;
 int pktsched_get_pkt_len (TYPE_1__*) ;
 scalar_t__ qempty (int *) ;
 struct tcq_class* tcq_clh_to_clp (struct tcq_if*,int ) ;
 int tcq_getq (struct tcq_class*,TYPE_1__*) ;

__attribute__((used)) static void
tcq_dequeue_cl(struct tcq_if *tif, struct tcq_class *cl, mbuf_svc_class_t sc,
    pktsched_pkt_t *pkt)
{
 struct ifclassq *ifq = tif->tif_ifq;
 uint32_t len;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 if (cl == ((void*)0)) {
  cl = tcq_clh_to_clp(tif, MBUF_SCIDX(sc));
  if (cl == ((void*)0)) {
   pkt->pktsched_pkt = ((void*)0);
   return;
  }
 }

 if (qempty(&cl->cl_q)) {
  pkt->pktsched_pkt = ((void*)0);
  return;
 }

 VERIFY(!IFCQ_IS_EMPTY(ifq));

 tcq_getq(cl, pkt);
 if (pkt->pktsched_pkt != ((void*)0)) {
  len = pktsched_get_pkt_len(pkt);
  IFCQ_DEC_LEN(ifq);
  IFCQ_DEC_BYTES(ifq, len);
  if (qempty(&cl->cl_q))
   cl->cl_period++;
  PKTCNTR_ADD(&cl->cl_xmitcnt, 1, len);
  IFCQ_XMIT_ADD(ifq, 1, len);
 }
}
