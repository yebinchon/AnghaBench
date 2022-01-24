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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 scalar_t__ KERN_OPERATION_TIMED_OUT ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  LCK_SLEEP_DEFAULT ; 
 scalar_t__ THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_page_queue_free_lock ; 
 scalar_t__ vm_pageout_running ; 
 int /*<<< orphan*/  vm_pageout_waiter ; 

kern_return_t
FUNC3(uint64_t deadline)
{
	kern_return_t kr;

	FUNC0(&vm_page_queue_free_lock);
	for (kr = KERN_SUCCESS; vm_pageout_running && (KERN_SUCCESS == kr); ) {
		vm_pageout_waiter = TRUE;
		if (THREAD_AWAKENED != FUNC1(
				&vm_page_queue_free_lock, LCK_SLEEP_DEFAULT,
				(event_t) &vm_pageout_waiter, THREAD_UNINT, deadline)) {
			kr = KERN_OPERATION_TIMED_OUT;
		}
	}
	FUNC2(&vm_page_queue_free_lock);

	return (kr);
}