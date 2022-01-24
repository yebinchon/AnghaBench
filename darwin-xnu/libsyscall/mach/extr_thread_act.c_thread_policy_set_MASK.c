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
typedef  int /*<<< orphan*/  thread_policy_t ;
typedef  int /*<<< orphan*/  thread_policy_flavor_t ;
typedef  int /*<<< orphan*/  thread_act_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_POLICY_STATIC ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC2(thread_act_t thread, thread_policy_flavor_t flavor, thread_policy_t policy_info, mach_msg_type_number_t policy_infoCnt)
{
	kern_return_t kr;

	kr = FUNC0(thread, flavor, policy_info, policy_infoCnt);
	if (kr == KERN_SUCCESS) {
		FUNC1(thread);
	} else if (kr == KERN_POLICY_STATIC) {
		kr = KERN_SUCCESS;
	}

	return kr;
}