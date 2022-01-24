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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int KMA_KOBJECT ; 
 int KMA_NOPAGEWAIT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_ZONE ; 
 int /*<<< orphan*/  c_vm_page_more_fictitious ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_page_alloc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_page_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zone_map ; 

void FUNC6(void)
{
	vm_offset_t	addr;
	kern_return_t	retval;

	c_vm_page_more_fictitious++;

	/*
	 * Allocate a single page from the zone_map. Do not wait if no physical
	 * pages are immediately available, and do not zero the space. We need
	 * our own blocking lock here to prevent having multiple,
	 * simultaneous requests from piling up on the zone_map lock. Exactly
	 * one (of our) threads should be potentially waiting on the map lock.
	 * If winner is not vm-privileged, then the page allocation will fail,
	 * and it will temporarily block here in the vm_page_wait().
	 */
	FUNC1(&vm_page_alloc_lock);
	/*
	 * If another thread allocated space, just bail out now.
	 */
	if (FUNC5(vm_page_zone) > 5) {
		/*
		 * The number "5" is a small number that is larger than the
		 * number of fictitious pages that any single caller will
		 * attempt to allocate. Otherwise, a thread will attempt to
		 * acquire a fictitious page (vm_page_grab_fictitious), fail,
		 * release all of the resources and locks already acquired,
		 * and then call this routine. This routine finds the pages
		 * that the caller released, so fails to allocate new space.
		 * The process repeats infinitely. The largest known number
		 * of fictitious pages required in this manner is 2. 5 is
		 * simply a somewhat larger number.
		 */
		FUNC2(&vm_page_alloc_lock);
		return;
	}

	retval = FUNC0(zone_map,
					&addr, PAGE_SIZE, 0,
					KMA_KOBJECT|KMA_NOPAGEWAIT, VM_KERN_MEMORY_ZONE);
	if (retval != KERN_SUCCESS) { 
		/*
		 * No page was available. Drop the
		 * lock to give another thread a chance at it, and
		 * wait for the pageout daemon to make progress.
		 */
		FUNC2(&vm_page_alloc_lock);
		FUNC3(THREAD_UNINT);
		return;
	}

	FUNC4(vm_page_zone, addr, PAGE_SIZE);

	FUNC2(&vm_page_alloc_lock);
}