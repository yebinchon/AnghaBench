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
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_2__ {scalar_t__ vm_restricted_to_single_processor; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_list_lock ; 
 scalar_t__ c_minor_count ; 
 scalar_t__ c_segment_count ; 
 int compaction_swapper_running ; 
 scalar_t__ fastwake_warmup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__ vm_pageout_state ; 
 int /*<<< orphan*/  vm_run_compactor_already_running ; 
 int /*<<< orphan*/  vm_run_compactor_did_compact ; 
 int /*<<< orphan*/  vm_run_compactor_empty_minor_q ; 
 int /*<<< orphan*/  vm_run_compactor_waited ; 

void
FUNC6(void)
{
	if (c_segment_count == 0)
		return;

	FUNC1(c_list_lock);

	if (c_minor_count == 0) {
		vm_run_compactor_empty_minor_q++;

		FUNC2(c_list_lock);
		return;
	}
	if (compaction_swapper_running) {

		if (vm_pageout_state.vm_restricted_to_single_processor == FALSE) {
			vm_run_compactor_already_running++;

			FUNC2(c_list_lock);
			return;
		}
		vm_run_compactor_waited++;

		FUNC0((event_t)&compaction_swapper_running, THREAD_UNINT);

		FUNC2(c_list_lock);
		
		FUNC3(THREAD_CONTINUE_NULL);

		return;
	}
	vm_run_compactor_did_compact++;

	fastwake_warmup = FALSE;
	compaction_swapper_running = 1;

	FUNC5(FALSE);

	compaction_swapper_running = 0;

	FUNC2(c_list_lock);

	FUNC4((event_t)&compaction_swapper_running);
}