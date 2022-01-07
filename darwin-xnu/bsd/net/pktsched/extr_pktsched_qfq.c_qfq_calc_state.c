
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct qfq_if {int * qif_bitmaps; int qif_V; } ;
struct qfq_group {int qfg_F; int qfg_index; int qfg_S; } ;
typedef scalar_t__ pktsched_bitmap_t ;


 scalar_t__ EB ;
 size_t ER ;
 scalar_t__ mask_from (int ,int ) ;
 struct qfq_group* qfq_ffs (struct qfq_if*,scalar_t__) ;
 scalar_t__ qfq_gt (int ,int ) ;

__attribute__((used)) static inline u_int32_t
qfq_calc_state(struct qfq_if *qif, struct qfq_group *grp)
{

 u_int32_t state = qfq_gt(grp->qfg_S, qif->qif_V);
 pktsched_bitmap_t mask = mask_from(qif->qif_bitmaps[ER],
     grp->qfg_index);
 struct qfq_group *next;

 if (mask) {
  next = qfq_ffs(qif, mask);
  if (qfq_gt(grp->qfg_F, next->qfg_F))
   state |= EB;
 }

 return (state);
}
