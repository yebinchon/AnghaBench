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
struct swapfile {int swp_flags; int /*<<< orphan*/  swp_queue; } ;
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int SWAP_READY ; 
 int SWAP_RECLAIM ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct swapfile*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ delayed_trim_handling_in_progress ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swf_global_queue ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  FUNC9 (struct swapfile*) ; 
 int /*<<< orphan*/  vm_swapfile_gc_needed ; 
 int /*<<< orphan*/  vm_swapfile_gc_thread_running ; 

__attribute__((used)) static void
FUNC10(boolean_t force_now)
{
	struct swapfile *swf = NULL;

	/*
	 * serialize the race between us and vm_swap_reclaim...
	 * if vm_swap_reclaim wins it will turn off SWAP_READY
	 * on the victim it has chosen... we can just skip over
	 * that file since vm_swap_reclaim will first process
	 * all of the delayed trims associated with it
	 */
	FUNC3(&vm_swap_data_lock);

	delayed_trim_handling_in_progress = TRUE;

	FUNC4(&vm_swap_data_lock);

	/*
	 * no need to hold the lock to walk the swf list since
	 * vm_swap_create (the only place where we add to this list)
	 * is run on the same thread as this function
	 * and vm_swap_reclaim doesn't remove items from this list
	 * instead marking them with SWAP_REUSE for future re-use
	 */
	swf = (struct swapfile*) FUNC6(&swf_global_queue);

	while (FUNC5(&swf_global_queue, (queue_entry_t)swf) == FALSE) {

		if ((swf->swp_flags & SWAP_READY) && (force_now == TRUE || FUNC1(swf))) {

			FUNC2(!(swf->swp_flags & SWAP_RECLAIM));
			FUNC9(swf);
		}
		swf = (struct swapfile*) FUNC7(&swf->swp_queue);
	}
	FUNC3(&vm_swap_data_lock);

	delayed_trim_handling_in_progress = FALSE;
	FUNC8((event_t) &delayed_trim_handling_in_progress);

	if (FUNC0() && !vm_swapfile_gc_thread_running)
		FUNC8((event_t) &vm_swapfile_gc_needed);

	FUNC4(&vm_swap_data_lock);

}