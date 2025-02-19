
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_int64_t ;
typedef size_t u_int32_t ;
struct qfq_if {scalar_t__* qif_bitmaps; scalar_t__ qif_V; scalar_t__ qif_queued; int qif_emptygrp; struct ifclassq* qif_ifq; } ;
struct qfq_group {scalar_t__ qfg_full_slots; size_t qfg_front; scalar_t__ qfg_F; unsigned long long qfg_slot_shift; scalar_t__ qfg_S; int qfg_index; struct qfq_class** qfg_slots; } ;
struct qfq_class {int cl_S; int cl_F; int cl_handle; int cl_xmitcnt; int cl_period; int cl_q; } ;
struct ifclassq {int dummy; } ;
struct TYPE_5__ {int * pktsched_pkt; } ;
typedef TYPE_1__ pktsched_pkt_t ;
typedef scalar_t__ pktsched_bitmap_t ;


 size_t ER ;
 int IFCQ_DEC_BYTES (struct ifclassq*,size_t) ;
 int IFCQ_DEC_LEN (struct ifclassq*) ;
 int IFCQ_IS_EMPTY (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_XMIT_ADD (struct ifclassq*,int,size_t) ;
 int LOG_DEBUG ;
 int PKTCNTR_ADD (int *,int,size_t) ;
 int QFQIF_IFP (struct qfq_if*) ;
 scalar_t__ QFQ_IWSUM ;
 int VERIFY (int) ;
 scalar_t__ VM_KERNEL_ADDRPERM (int *) ;
 int if_name (int ) ;
 int log (int ,char*,int ,int ,int ,int ,int ,scalar_t__) ;
 int pktsched_bit_clr (int ,scalar_t__*) ;
 int pktsched_bit_set (int ,scalar_t__*) ;
 size_t pktsched_get_pkt_len (TYPE_1__*) ;
 int pktsched_verbose ;
 scalar_t__ qempty (int *) ;
 size_t qfq_calc_state (struct qfq_if*,struct qfq_group*) ;
 int qfq_dump_sched (struct qfq_if*,char*) ;
 struct qfq_group* qfq_ffs (struct qfq_if*,scalar_t__) ;
 int qfq_getq (struct qfq_class*,TYPE_1__*) ;
 scalar_t__ qfq_round_down (int ,unsigned long long) ;
 struct qfq_class* qfq_slot_scan (struct qfq_if*,struct qfq_group*) ;
 int qfq_style (struct qfq_if*) ;
 int qfq_unblock_groups (struct qfq_if*,int ,scalar_t__) ;
 scalar_t__ qfq_update_class (struct qfq_if*,struct qfq_group*,struct qfq_class*) ;
 int qfq_update_eligible (struct qfq_if*,scalar_t__) ;

void
qfq_dequeue(struct qfq_if *qif, pktsched_pkt_t *pkt)
{
 pktsched_bitmap_t er_bits = qif->qif_bitmaps[ER];
 struct ifclassq *ifq = qif->qif_ifq;
 struct qfq_group *grp;
 struct qfq_class *cl;
 u_int64_t old_V;
 u_int32_t len;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 pkt->pktsched_pkt = ((void*)0);

 for (;;) {
  if (er_bits == 0) {





   return;
  }
  grp = qfq_ffs(qif, er_bits);

  if (grp->qfg_full_slots != 0)
   break;
  pktsched_bit_clr(grp->qfg_index, &er_bits);



 }
 VERIFY(!IFCQ_IS_EMPTY(ifq));

 cl = grp->qfg_slots[grp->qfg_front];
 VERIFY(cl != ((void*)0) && !qempty(&cl->cl_q));

 qfq_getq(cl, pkt);
 VERIFY(pkt->pktsched_pkt != ((void*)0));
 len = pktsched_get_pkt_len(pkt);





 IFCQ_DEC_LEN(ifq);
 IFCQ_DEC_BYTES(ifq, len);
 if (qempty(&cl->cl_q))
  cl->cl_period++;
 PKTCNTR_ADD(&cl->cl_xmitcnt, 1, len);
 IFCQ_XMIT_ADD(ifq, 1, len);

 old_V = qif->qif_V;
 qif->qif_V += (u_int64_t)len * QFQ_IWSUM;

 if (pktsched_verbose > 2) {
  log(LOG_DEBUG, "%s: %s qid=%d dequeue pkt=0x%llx F=0x%llx "
      "V=0x%llx", if_name(QFQIF_IFP(qif)), qfq_style(qif),
      cl->cl_handle,
      (uint64_t)VM_KERNEL_ADDRPERM(pkt->pktsched_pkt), cl->cl_F,
      qif->qif_V);
 }

 if (qfq_update_class(qif, grp, cl)) {
  u_int64_t old_F = grp->qfg_F;

  cl = qfq_slot_scan(qif, grp);
  if (!cl) {
   pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[ER]);
  } else {
   u_int32_t s;
   u_int64_t roundedS =
       qfq_round_down(cl->cl_S, grp->qfg_slot_shift);

   if (grp->qfg_S == roundedS)
    goto skip_unblock;

   grp->qfg_S = roundedS;
   grp->qfg_F = roundedS + (2ULL << grp->qfg_slot_shift);


   pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[ER]);
   s = qfq_calc_state(qif, grp);
   pktsched_bit_set(grp->qfg_index, &qif->qif_bitmaps[s]);
  }

  qfq_unblock_groups(qif, grp->qfg_index, old_F);
 }

skip_unblock:
 qfq_update_eligible(qif, old_V);





}
