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
typedef  int /*<<< orphan*/  thread_act_t ;
typedef  int /*<<< orphan*/  policy_t ;
typedef  int /*<<< orphan*/  policy_base_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ KERN_POLICY_STATIC ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC2(thread_act_t thr_act, policy_t policy, policy_base_t base, mach_msg_type_number_t baseCnt, boolean_t set_limit)
{
	kern_return_t kr;

	kr = FUNC0(thr_act, policy, base, baseCnt, set_limit);
	if (kr == KERN_SUCCESS) {
		FUNC1(thr_act);
	} else if (kr == KERN_POLICY_STATIC) {
		kr = KERN_SUCCESS;
	}

	return kr;
}