#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u_int64_t ;
typedef  size_t u_int32_t ;
struct qfq_if {size_t qif_maxslots; } ;
struct qfq_group {size_t qfg_slot_shift; size_t qfg_S; size_t qfg_front; int /*<<< orphan*/  qfg_full_slots; struct qfq_class** qfg_slots; } ;
struct qfq_class {struct qfq_class* cl_next; int /*<<< orphan*/  cl_S; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void
FUNC2(struct qfq_if *qif, struct qfq_group *grp,
    struct qfq_class *cl)
{
#pragma unused(qif)
	struct qfq_class **pprev;
	u_int32_t i, offset;
	u_int64_t roundedS;

	roundedS = FUNC1(cl->cl_S, grp->qfg_slot_shift);
	offset = (roundedS - grp->qfg_S) >> grp->qfg_slot_shift;
	i = (grp->qfg_front + offset) % qif->qif_maxslots;

	pprev = &grp->qfg_slots[i];
	while (*pprev && *pprev != cl)
		pprev = &(*pprev)->cl_next;

	*pprev = cl->cl_next;
	if (!grp->qfg_slots[i])
		FUNC0(offset, &grp->qfg_full_slots);
}