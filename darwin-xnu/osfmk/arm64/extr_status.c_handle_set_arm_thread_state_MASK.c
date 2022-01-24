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
typedef  scalar_t__ thread_state_t ;
typedef  scalar_t__ mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  arm_unified_thread_state_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 scalar_t__ ARM_UNIFIED_THREAD_STATE_COUNT ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC8(
			 const thread_state_t tstate,
			 mach_msg_type_number_t count,
			 arm_saved_state_t *saved_state)
{
	/* In an arm64 world, this flavor can be used to set the thread state of a
	 * 32-bit or 64-bit thread from a unified structure, but we need to support
	 * legacy clients who are only aware of 32-bit, so check the count to see
	 * what the client is expecting.
	 */
	if (count < ARM_UNIFIED_THREAD_STATE_COUNT) {
		if (!FUNC3(saved_state)) {
			return (KERN_INVALID_ARGUMENT);
		}
		return FUNC2(tstate, count, saved_state);
	}

	const arm_unified_thread_state_t *unified_state = (const arm_unified_thread_state_t *) tstate;
#if __arm64__
	if (is_thread_state64(unified_state)) {
		if (!is_saved_state64(saved_state)) {
			return (KERN_INVALID_ARGUMENT);
		}
		(void)thread_state64_to_saved_state(const_thread_state64(unified_state), saved_state);
	} else
#endif
	{
		if (!FUNC3(saved_state)) {
			return (KERN_INVALID_ARGUMENT);
		}
		(void)FUNC6(FUNC0(unified_state), saved_state);
	}

	return (KERN_SUCCESS);
}