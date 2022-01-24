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
typedef  TYPE_1__* c_segment_t ;
struct TYPE_2__ {int /*<<< orphan*/  c_generation_id; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  c_age_list_head ; 
 int /*<<< orphan*/  c_list_lock ; 
 scalar_t__ fastwake_recording_in_progress ; 
 int /*<<< orphan*/  first_c_segment_to_warm_generation_id ; 
 int /*<<< orphan*/  last_c_segment_to_warm_generation_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void 
FUNC5(void)
{
	c_segment_t	c_seg;

	FUNC1(c_list_lock);

	if (fastwake_recording_in_progress == TRUE) {

		if (!FUNC3(&c_age_list_head)) {

			c_seg = (c_segment_t)FUNC4(&c_age_list_head);

			last_c_segment_to_warm_generation_id = c_seg->c_generation_id;
		} else
			last_c_segment_to_warm_generation_id = first_c_segment_to_warm_generation_id;

		fastwake_recording_in_progress = FALSE;

		FUNC0("vm_compressor_record_warmup (%qd - %qd)\n", first_c_segment_to_warm_generation_id, last_c_segment_to_warm_generation_id);
	}
	FUNC2(c_list_lock);
}