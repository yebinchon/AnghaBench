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
struct qfq_if {int qif_maxslots; } ;
struct qfq_group {int qfg_full_slots; int qfg_front; struct qfq_class** qfg_slots; int /*<<< orphan*/  qfg_index; } ;
struct qfq_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct qfq_if*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 int pktsched_verbose ; 
 int /*<<< orphan*/  FUNC4 (struct qfq_if*) ; 

__attribute__((used)) static inline struct qfq_class *
FUNC5(struct qfq_if *qif, struct qfq_group *grp)
{
	int i;

	if (pktsched_verbose > 2) {
		FUNC2(LOG_DEBUG, "%s: %s grp=%d full_slots=0x%x\n",
		    FUNC1(FUNC0(qif)), FUNC4(qif), grp->qfg_index,
		    grp->qfg_full_slots);
	}

	if (grp->qfg_full_slots == 0)
		return (NULL);

	i = FUNC3(grp->qfg_full_slots) - 1; /* zero-based */
	if (i > 0) {
		grp->qfg_front = (grp->qfg_front + i) % qif->qif_maxslots;
		grp->qfg_full_slots >>= i;
	}

	return (grp->qfg_slots[grp->qfg_front]);
}