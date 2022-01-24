#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  void* clock_sec_t ;
typedef  int /*<<< orphan*/  clock_nsec_t ;
struct TYPE_2__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TH_OPT_VMPRIV ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 () ; 
 scalar_t__ hibernate_in_progress_with_pinned_swap ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  vm_swapfile_create_needed ; 
 int /*<<< orphan*/  vm_swapfile_create_thread_awakened ; 
 int vm_swapfile_create_thread_running ; 
 void* vm_swapfile_last_failed_to_create_ts ; 
 void* vm_swapfile_last_successful_create_ts ; 

__attribute__((used)) static void
FUNC11(void)
{
	clock_sec_t	sec;
	clock_nsec_t	nsec;

	FUNC4()->options |= TH_OPT_VMPRIV;

	vm_swapfile_create_thread_awakened++;
	vm_swapfile_create_thread_running = 1;

	while (TRUE) {
		/*
		 * walk through the list of swap files
		 * and do the delayed frees/trims for
		 * any swap file whose count of delayed
		 * frees is above the batch limit
		 */
		FUNC10(FALSE);

		FUNC5(&vm_swap_data_lock);

		if (hibernate_in_progress_with_pinned_swap == TRUE)
			break;

		FUNC3(&sec, &nsec);

		if (FUNC1(sec) == 0)
			break;

		FUNC6(&vm_swap_data_lock);

		if (FUNC9() == FALSE) {
			vm_swapfile_last_failed_to_create_ts = sec;
			FUNC0("vm_swap_create_file failed @ %lu secs\n", (unsigned long)sec);

		} else
			vm_swapfile_last_successful_create_ts = sec;
	}
	vm_swapfile_create_thread_running = 0;

	if (hibernate_in_progress_with_pinned_swap == TRUE)
		FUNC8((event_t)&hibernate_in_progress_with_pinned_swap);

	FUNC2((event_t)&vm_swapfile_create_needed, THREAD_UNINT);

	FUNC6(&vm_swap_data_lock);

	FUNC7((thread_continue_t)vm_swapfile_create_thread);
	
	/* NOTREACHED */
}