
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int64_t ;
typedef size_t u_int32_t ;
struct qfq_if {size_t qif_maxslots; } ;
struct qfq_group {size_t qfg_S; size_t qfg_slot_shift; size_t qfg_front; int qfg_full_slots; struct qfq_class** qfg_slots; } ;
struct qfq_class {struct qfq_class* cl_next; } ;


 int pktsched_bit_set (size_t,int *) ;

__attribute__((used)) static inline void
qfq_slot_insert(struct qfq_if *qif, struct qfq_group *grp,
    struct qfq_class *cl, u_int64_t roundedS)
{
 u_int64_t slot = (roundedS - grp->qfg_S) >> grp->qfg_slot_shift;
 u_int32_t i = (grp->qfg_front + slot) % qif->qif_maxslots;

 cl->cl_next = grp->qfg_slots[i];
 grp->qfg_slots[i] = cl;
 pktsched_bit_set(slot, &grp->qfg_full_slots);
}
