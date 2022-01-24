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
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  c_compressor_swap_trigger ; 
 int /*<<< orphan*/  c_list_lock ; 
 scalar_t__ c_minor_count ; 
 scalar_t__ c_segment_count ; 
 int compaction_swapper_awakened ; 
 scalar_t__ compaction_swapper_running ; 
 int /*<<< orphan*/  fastwake_warmup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  vm_wake_compactor_swapper_calls ; 

void
FUNC4(void)
{
	if (compaction_swapper_running || compaction_swapper_awakened || c_segment_count == 0)
		return;

	if (c_minor_count || FUNC3()) {

		FUNC0(c_list_lock);

		fastwake_warmup = FALSE;

		if (compaction_swapper_running == 0 && compaction_swapper_awakened == 0) {

			vm_wake_compactor_swapper_calls++;

			compaction_swapper_awakened = 1;
			FUNC2((event_t)&c_compressor_swap_trigger);
		}
		FUNC1(c_list_lock);
	}
}