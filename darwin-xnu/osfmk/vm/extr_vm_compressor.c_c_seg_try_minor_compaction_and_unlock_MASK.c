#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* c_segment_t ;
struct TYPE_5__ {int /*<<< orphan*/  c_lock; int /*<<< orphan*/  c_on_minorcompact_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_list_lock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  try_minor_compaction_failed ; 
 int /*<<< orphan*/  try_minor_compaction_succeeded ; 

void
FUNC5(c_segment_t c_seg)
{

	FUNC1(c_seg->c_on_minorcompact_q);
	/*
	 * c_seg is currently on the delayed minor compaction
	 * queue and we have c_seg locked... if we can get the
	 * c_list_lock w/o blocking (if we blocked we could deadlock
	 * because the lock order is c_list_lock then c_seg's lock)
	 * we'll pull it from the delayed list and free it directly
	 */
	if ( !FUNC3(c_list_lock)) {
		/*
		 * c_list_lock is held, we need to bail
		 */
		try_minor_compaction_failed++;

		FUNC4(&c_seg->c_lock);
	} else {
		try_minor_compaction_succeeded++;

		FUNC0(c_seg);
		FUNC2(c_seg, TRUE, FALSE, FALSE);
	}
}