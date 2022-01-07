
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct qfq_if {unsigned long* qif_bitmaps; int qif_V; } ;
struct qfq_group {unsigned long qfg_index; scalar_t__ qfg_full_slots; size_t qfg_front; unsigned long long qfg_slot_shift; scalar_t__ qfg_S; scalar_t__ qfg_F; int * qfg_slots; } ;
struct qfq_class {int cl_S; int cl_F; int cl_handle; int cl_qif; struct qfq_group* cl_grp; } ;
typedef int pktsched_bitmap_t ;


 size_t EB ;
 size_t ER ;
 size_t IB ;
 size_t IR ;
 int LOG_DEBUG ;
 int QFQIF_IFP (int ) ;
 unsigned long __fls (int) ;
 int if_name (int ) ;
 int log (int ,char*,int ,int ,int ,unsigned long,scalar_t__,size_t,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int pktsched_bit_clr (unsigned long,unsigned long*) ;
 int pktsched_bit_set (unsigned long,unsigned long*) ;
 scalar_t__ pktsched_bit_tst (unsigned long,unsigned long*) ;
 int pktsched_verbose ;
 int qfq_calc_state (struct qfq_if*,struct qfq_group*) ;
 int qfq_dump_sched (struct qfq_if*,char*) ;
 int qfq_move_groups (struct qfq_if*,int,size_t,size_t) ;
 scalar_t__ qfq_round_down (int ,unsigned long long) ;
 int qfq_slot_remove (struct qfq_if*,struct qfq_group*,struct qfq_class*) ;
 struct qfq_class* qfq_slot_scan (struct qfq_if*,struct qfq_group*) ;
 int qfq_style (int ) ;
 int qfq_update_eligible (struct qfq_if*,int ) ;

__attribute__((used)) static void
qfq_deactivate_class(struct qfq_if *qif, struct qfq_class *cl)
{
 struct qfq_group *grp = cl->cl_grp;
 pktsched_bitmap_t mask;
 u_int64_t roundedS;
 int s;

 if (pktsched_verbose) {
  log(LOG_DEBUG, "%s: %s deactivate qid=%d grp=%d "
      "full_slots=0x%x front=%d bitmaps={ER=0x%x,EB=0x%x,"
      "IR=0x%x,IB=0x%x}\n",
      if_name(QFQIF_IFP(cl->cl_qif)), qfq_style(cl->cl_qif),
      cl->cl_handle, grp->qfg_index, grp->qfg_full_slots,
      grp->qfg_front, qif->qif_bitmaps[ER], qif->qif_bitmaps[EB],
      qif->qif_bitmaps[IR], qif->qif_bitmaps[IB]);




 }

 cl->cl_F = cl->cl_S;
 qfq_slot_remove(qif, grp, cl);

 if (grp->qfg_full_slots == 0) {





  pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[IR]);
  pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[EB]);
  pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[IB]);

  if (pktsched_bit_tst(grp->qfg_index, &qif->qif_bitmaps[ER]) &&
      !(qif->qif_bitmaps[ER] & ~((1UL << grp->qfg_index) - 1))) {
   mask = qif->qif_bitmaps[ER] &
       ((1UL << grp->qfg_index) - 1);
   if (mask)
    mask = ~((1UL << __fls(mask)) - 1);
   else
    mask = (pktsched_bitmap_t)~0UL;
   qfq_move_groups(qif, mask, EB, ER);
   qfq_move_groups(qif, mask, IB, IR);
  }
  pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[ER]);
 } else if (!grp->qfg_slots[grp->qfg_front]) {
  cl = qfq_slot_scan(qif, grp);
  roundedS = qfq_round_down(cl->cl_S, grp->qfg_slot_shift);
  if (grp->qfg_S != roundedS) {
   pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[ER]);
   pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[IR]);
   pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[EB]);
   pktsched_bit_clr(grp->qfg_index, &qif->qif_bitmaps[IB]);
   grp->qfg_S = roundedS;
   grp->qfg_F = roundedS + (2ULL << grp->qfg_slot_shift);
   s = qfq_calc_state(qif, grp);
   pktsched_bit_set(grp->qfg_index, &qif->qif_bitmaps[s]);
  }
 }
 qfq_update_eligible(qif, qif->qif_V);





}
