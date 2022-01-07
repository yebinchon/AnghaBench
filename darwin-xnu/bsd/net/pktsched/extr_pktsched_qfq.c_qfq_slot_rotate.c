
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
struct qfq_if {int qif_maxslots; } ;
struct qfq_group {int qfg_S; int qfg_slot_shift; int qfg_full_slots; int qfg_front; } ;



__attribute__((used)) static inline void
qfq_slot_rotate(struct qfq_if *qif, struct qfq_group *grp, u_int64_t roundedS)
{
#pragma unused(qif)
 u_int32_t i = (grp->qfg_S - roundedS) >> grp->qfg_slot_shift;

 grp->qfg_full_slots <<= i;
 grp->qfg_front = (grp->qfg_front - i) % qif->qif_maxslots;
}
