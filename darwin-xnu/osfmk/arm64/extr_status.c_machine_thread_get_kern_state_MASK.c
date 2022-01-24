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
typedef  scalar_t__ thread_t ;
typedef  int /*<<< orphan*/  thread_state_t ;
typedef  int thread_flavor_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_2__ {int /*<<< orphan*/ * cpu_int_state; } ;

/* Variables and functions */
#define  ARM_THREAD_STATE 130 
#define  ARM_THREAD_STATE32 129 
#define  ARM_THREAD_STATE64 128 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC5(
			      thread_t thread,
			      thread_flavor_t flavor,
			      thread_state_t tstate,
			      mach_msg_type_number_t * count)
{
	/*
	 * This works only for an interrupted kernel thread
	 */
	if (thread != FUNC0() || FUNC1()->cpu_int_state == NULL)
		return KERN_FAILURE;

	switch (flavor) {
	case ARM_THREAD_STATE:
	{
		kern_return_t rn = FUNC4(tstate, count, FUNC1()->cpu_int_state);
		if (rn) return rn;
		break;
	}
	case ARM_THREAD_STATE32:
	{
		kern_return_t rn = FUNC2(tstate, count, FUNC1()->cpu_int_state);
		if (rn) return rn;
		break;
	}
#if __arm64__
	case ARM_THREAD_STATE64:
	{
		kern_return_t rn = handle_get_arm64_thread_state(tstate, count, getCpuDatap()->cpu_int_state);
		if (rn) return rn;
		break;
	}
#endif
	default:
		return (KERN_INVALID_ARGUMENT);
	}
	return (KERN_SUCCESS);
}