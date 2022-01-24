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
typedef  scalar_t__ u_int32_t ;
struct qfq_if {int /*<<< orphan*/ * qif_bitmaps; int /*<<< orphan*/  qif_V; } ;
struct qfq_group {int /*<<< orphan*/  qfg_F; int /*<<< orphan*/  qfg_index; int /*<<< orphan*/  qfg_S; } ;
typedef  scalar_t__ pktsched_bitmap_t ;

/* Variables and functions */
 scalar_t__ EB ; 
 size_t ER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qfq_group* FUNC1 (struct qfq_if*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u_int32_t
FUNC3(struct qfq_if *qif, struct qfq_group *grp)
{
	/* if S > V we are not eligible */
	u_int32_t state = FUNC2(grp->qfg_S, qif->qif_V);
	pktsched_bitmap_t mask = FUNC0(qif->qif_bitmaps[ER],
	    grp->qfg_index);
	struct qfq_group *next;

	if (mask) {
		next = FUNC1(qif, mask);
		if (FUNC2(grp->qfg_F, next->qfg_F))
			state |= EB;
	}

	return (state);
}