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
typedef  int /*<<< orphan*/  u_int64_t ;
struct qfq_if {int /*<<< orphan*/ * qif_bitmaps; } ;
struct qfq_group {int /*<<< orphan*/  qfg_F; } ;
typedef  int pktsched_bitmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  EB ; 
 size_t ER ; 
 int /*<<< orphan*/  IB ; 
 size_t IR ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct qfq_group* FUNC1 (struct qfq_if*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qfq_if*,int,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void
FUNC4(struct qfq_if *qif, int index, u_int64_t old_finish)
{
	pktsched_bitmap_t mask = FUNC0(qif->qif_bitmaps[ER], index + 1);
	struct qfq_group *next;

	if (mask) {
		next = FUNC1(qif, mask);
		if (!FUNC2(next->qfg_F, old_finish))
			return;
	}

	mask = (1UL << index) - 1;
	FUNC3(qif, mask, EB, ER);
	FUNC3(qif, mask, IB, IR);
}