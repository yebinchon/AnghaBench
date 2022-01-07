
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct qfq_if {scalar_t__ qif_V; int * qif_bitmaps; } ;
struct qfq_group {scalar_t__ qfg_F; } ;
struct qfq_class {scalar_t__ cl_F; scalar_t__ cl_S; TYPE_1__* cl_grp; } ;
typedef scalar_t__ pktsched_bitmap_t ;
struct TYPE_2__ {int qfg_slot_shift; int qfg_index; } ;


 size_t ER ;
 scalar_t__ mask_from (int ,int ) ;
 struct qfq_group* qfq_ffs (struct qfq_if*,scalar_t__) ;
 scalar_t__ qfq_gt (scalar_t__,scalar_t__) ;
 scalar_t__ qfq_round_down (scalar_t__,int) ;

__attribute__((used)) static inline void
qfq_update_start(struct qfq_if *qif, struct qfq_class *cl)
{
 pktsched_bitmap_t mask;
 u_int64_t limit, roundedF;
 int slot_shift = cl->cl_grp->qfg_slot_shift;

 roundedF = qfq_round_down(cl->cl_F, slot_shift);
 limit = qfq_round_down(qif->qif_V, slot_shift) + (1UL << slot_shift);

 if (!qfq_gt(cl->cl_F, qif->qif_V) || qfq_gt(roundedF, limit)) {

  mask = mask_from(qif->qif_bitmaps[ER], cl->cl_grp->qfg_index);
  if (mask) {
   struct qfq_group *next = qfq_ffs(qif, mask);
   if (qfq_gt(roundedF, next->qfg_F)) {
    cl->cl_S = next->qfg_F;
    return;
   }
  }
  cl->cl_S = qif->qif_V;
 } else {
  cl->cl_S = cl->cl_F;
 }
}
