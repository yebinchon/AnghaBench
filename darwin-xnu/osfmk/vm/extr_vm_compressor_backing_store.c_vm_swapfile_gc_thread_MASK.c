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
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ compressor_store_stop_compaction ; 
 scalar_t__ hibernate_in_progress_with_pinned_swap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ vm_swap_force_defrag ; 
 scalar_t__ vm_swap_force_reclaim ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  vm_swapfile_gc_needed ; 
 int /*<<< orphan*/  vm_swapfile_gc_thread_awakened ; 
 int vm_swapfile_gc_thread_running ; 

__attribute__((used)) static void
FUNC10(void)

{
	boolean_t	need_defragment;
	boolean_t	need_reclaim;

	vm_swapfile_gc_thread_awakened++;
	vm_swapfile_gc_thread_running = 1;

	while (TRUE) {

		FUNC4(&vm_swap_data_lock);
		
		if (hibernate_in_progress_with_pinned_swap == TRUE)
			break;

		if (FUNC0() || compressor_store_stop_compaction == TRUE)
			break;

		need_defragment = FALSE;
		need_reclaim = FALSE;

		if (FUNC1())
			need_defragment = TRUE;

		if (FUNC2()) {
			need_defragment = TRUE;
			need_reclaim = TRUE;
		}
		if (need_defragment == FALSE && need_reclaim == FALSE)
			break;

		vm_swap_force_defrag = FALSE;
		vm_swap_force_reclaim = FALSE;

		FUNC5(&vm_swap_data_lock);

		if (need_defragment == TRUE)
			FUNC8();
		if (need_reclaim == TRUE)
			FUNC9();
	}
	vm_swapfile_gc_thread_running = 0;

	if (hibernate_in_progress_with_pinned_swap == TRUE)
		FUNC7((event_t)&hibernate_in_progress_with_pinned_swap);

	FUNC3((event_t)&vm_swapfile_gc_needed, THREAD_UNINT);

	FUNC5(&vm_swap_data_lock);

	FUNC6((thread_continue_t)vm_swapfile_gc_thread);
	
	/* NOTREACHED */
}