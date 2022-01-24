#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  vmp_free_when_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(vm_page_t page, boolean_t queues_locked)
{
	if (!queues_locked) {
		FUNC0();
	}

	page->vmp_free_when_done = FALSE;
	/*
	 * need to drop the laundry count...
	 * we may also need to remove it
	 * from the I/O paging queue...
	 * vm_pageout_throttle_up handles both cases
	 *
	 * the laundry and pageout_queue flags are cleared...
	 */
	FUNC2(page);

	if (!queues_locked) {
		FUNC1();
	}
}