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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  thread_policy_t ;
struct thread_policy_state {int /*<<< orphan*/  thps_user_promotion_basepri; } ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  THREAD_POLICY_STATE ; 
 int /*<<< orphan*/  THREAD_POLICY_STATE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t
FUNC4(void)
{
	mach_msg_type_number_t count = THREAD_POLICY_STATE_COUNT;
	struct thread_policy_state thread_policy;
	boolean_t get_default = FALSE;
	mach_port_t thread_port = FUNC1(FUNC2());

	kern_return_t kr = FUNC3(thread_port, THREAD_POLICY_STATE,
			(thread_policy_t)&thread_policy, &count, &get_default);
	T_QUIET; FUNC0(kr, "thread_policy_get");
	return thread_policy.thps_user_promotion_basepri;
}