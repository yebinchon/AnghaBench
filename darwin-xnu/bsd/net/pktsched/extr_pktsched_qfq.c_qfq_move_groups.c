
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_if {int* qif_bitmaps; } ;
typedef int pktsched_bitmap_t ;



__attribute__((used)) static inline void
qfq_move_groups(struct qfq_if *qif, pktsched_bitmap_t mask, int src, int dst)
{
 qif->qif_bitmaps[dst] |= qif->qif_bitmaps[src] & mask;
 qif->qif_bitmaps[src] &= ~mask;
}
