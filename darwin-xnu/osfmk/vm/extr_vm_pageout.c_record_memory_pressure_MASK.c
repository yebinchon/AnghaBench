#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_pageout_stat {int dummy; } ;
struct TYPE_5__ {scalar_t__ vm_memory_pressure; } ;
struct TYPE_4__ {scalar_t__ freed_external; scalar_t__ freed_internal; scalar_t__ freed_cleaned; scalar_t__ freed_speculative; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 size_t FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int vm_page_buckets_check_interval ; 
 unsigned int vm_pageout_stat_now ; 
 TYPE_2__ vm_pageout_state ; 
 TYPE_1__* vm_pageout_stats ; 

void
FUNC5(void)
{
	unsigned int vm_pageout_next;

#if VM_PAGE_BUCKETS_CHECK
	/* check the consistency of VM page buckets at regular interval */
	static int counter = 0;
	if ((++counter % vm_page_buckets_check_interval) == 0) {
		vm_page_buckets_check();
	}
#endif /* VM_PAGE_BUCKETS_CHECK */

	vm_pageout_state.vm_memory_pressure =
	  vm_pageout_stats[FUNC1(vm_pageout_stat_now)].freed_speculative +
	  vm_pageout_stats[FUNC1(vm_pageout_stat_now)].freed_cleaned +
	  vm_pageout_stats[FUNC1(vm_pageout_stat_now)].freed_internal +
	  vm_pageout_stats[FUNC1(vm_pageout_stat_now)].freed_external;

	FUNC3( (unsigned int)vm_pageout_state.vm_memory_pressure );

	/* move "now" forward */
	vm_pageout_next = FUNC0(vm_pageout_stat_now);

	FUNC2(&vm_pageout_stats[vm_pageout_next], sizeof(struct vm_pageout_stat));

	vm_pageout_stat_now = vm_pageout_next;
}