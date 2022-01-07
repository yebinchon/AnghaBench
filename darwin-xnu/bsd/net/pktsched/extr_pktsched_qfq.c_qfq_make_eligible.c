
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct qfq_if {int qif_V; } ;
typedef int pktsched_bitmap_t ;


 int EB ;
 int ER ;
 int IB ;
 int IR ;
 int QFQ_MIN_SLOT_SHIFT ;
 unsigned long __fls (int) ;
 int qfq_move_groups (struct qfq_if*,int,int ,int ) ;

__attribute__((used)) static inline void
qfq_make_eligible(struct qfq_if *qif, u_int64_t old_V)
{
 pktsched_bitmap_t mask, vslot, old_vslot;

 vslot = qif->qif_V >> QFQ_MIN_SLOT_SHIFT;
 old_vslot = old_V >> QFQ_MIN_SLOT_SHIFT;

 if (vslot != old_vslot) {
  mask = (2UL << (__fls(vslot ^ old_vslot))) - 1;
  qfq_move_groups(qif, mask, IR, ER);
  qfq_move_groups(qif, mask, IB, EB);
 }
}
