
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_group {size_t qfg_front; int qfg_full_slots; struct qfq_class** qfg_slots; } ;
struct qfq_class {struct qfq_class* cl_next; } ;


 int pktsched_bit_clr (int ,int *) ;

__attribute__((used)) static inline void
qfq_front_slot_remove(struct qfq_group *grp)
{
 struct qfq_class **h = &grp->qfg_slots[grp->qfg_front];

 *h = (*h)->cl_next;
 if (!*h)
  pktsched_bit_clr(0, &grp->qfg_full_slots);
}
