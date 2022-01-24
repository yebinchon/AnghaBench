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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  c_compressor_swap_trigger ; 
 int /*<<< orphan*/  c_list_lock ; 
 int compaction_swapper_awakened ; 
 scalar_t__ compaction_swapper_running ; 
 int /*<<< orphan*/  fastwake_warmup ; 
 scalar_t__ first_c_segment_to_warm_generation_id ; 
 scalar_t__ last_c_segment_to_warm_generation_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
	FUNC0(c_list_lock);
	
	if (first_c_segment_to_warm_generation_id == last_c_segment_to_warm_generation_id) {
		first_c_segment_to_warm_generation_id = last_c_segment_to_warm_generation_id = 0;

		FUNC1(c_list_lock);
		return;
	}

	if (compaction_swapper_running == 0 && compaction_swapper_awakened == 0) {

		fastwake_warmup = TRUE;

		compaction_swapper_awakened = 1;
		FUNC2((event_t)&c_compressor_swap_trigger);
	}
	FUNC1(c_list_lock);
}