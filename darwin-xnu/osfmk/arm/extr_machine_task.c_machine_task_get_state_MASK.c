#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_state_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  arm_debug_state_t ;
struct TYPE_3__ {int /*<<< orphan*/ * task_debug; } ;

/* Variables and functions */
#define  ARM_DEBUG_STATE 128 
 int /*<<< orphan*/  ARM_DEBUG_STATE_COUNT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kern_return_t 	
FUNC2(task_t task, 
		int flavor, 
		thread_state_t state,
		mach_msg_type_number_t *state_count)
{
	switch (flavor) {
	case ARM_DEBUG_STATE:
	{
		arm_debug_state_t *tstate = (arm_debug_state_t *) state;
		
		if (*state_count != ARM_DEBUG_STATE_COUNT) {
			return KERN_INVALID_ARGUMENT;
		}
		
		if (task->task_debug == NULL) {
			FUNC0(state, sizeof(*tstate));		
		} else {
			FUNC1((arm_debug_state_t*) task->task_debug, tstate, FALSE); /* FALSE OR TRUE doesn't matter since we are ignoring it for arm */
		} 
		
		return KERN_SUCCESS;
	}
	default:
	  {
		return KERN_INVALID_ARGUMENT;
	  }

	}
	return KERN_FAILURE;
}