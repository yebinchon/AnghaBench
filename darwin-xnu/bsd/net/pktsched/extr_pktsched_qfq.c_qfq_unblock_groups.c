
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct qfq_if {int * qif_bitmaps; } ;
struct qfq_group {int qfg_F; } ;
typedef int pktsched_bitmap_t ;


 int EB ;
 size_t ER ;
 int IB ;
 size_t IR ;
 int mask_from (int ,int) ;
 struct qfq_group* qfq_ffs (struct qfq_if*,int) ;
 int qfq_gt (int ,int ) ;
 int qfq_move_groups (struct qfq_if*,int,int ,size_t) ;

__attribute__((used)) static inline void
qfq_unblock_groups(struct qfq_if *qif, int index, u_int64_t old_finish)
{
 pktsched_bitmap_t mask = mask_from(qif->qif_bitmaps[ER], index + 1);
 struct qfq_group *next;

 if (mask) {
  next = qfq_ffs(qif, mask);
  if (!qfq_gt(next->qfg_F, old_finish))
   return;
 }

 mask = (1UL << index) - 1;
 qfq_move_groups(qif, mask, EB, ER);
 qfq_move_groups(qif, mask, IB, IR);
}
