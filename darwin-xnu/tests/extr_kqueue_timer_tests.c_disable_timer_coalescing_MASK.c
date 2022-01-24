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
typedef  int /*<<< orphan*/  task_policy_t ;
struct task_qos_policy {int /*<<< orphan*/  task_throughput_qos_tier; int /*<<< orphan*/  task_latency_qos_tier; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  LATENCY_QOS_TIER_0 ; 
 int /*<<< orphan*/  TASK_OVERRIDE_QOS_POLICY ; 
 int /*<<< orphan*/  TASK_QOS_POLICY_COUNT ; 
 int /*<<< orphan*/  THROUGHPUT_QOS_TIER_0 ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_SETUPBEGIN ; 
 int /*<<< orphan*/  T_SETUPEND ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
    struct task_qos_policy	qosinfo;
    kern_return_t			kr;

	T_SETUPBEGIN;

	qosinfo.task_latency_qos_tier = LATENCY_QOS_TIER_0;
	qosinfo.task_throughput_qos_tier = THROUGHPUT_QOS_TIER_0;

	kr = FUNC3(FUNC2(), TASK_OVERRIDE_QOS_POLICY, (task_policy_t)&qosinfo,
	                     TASK_QOS_POLICY_COUNT);
	if (kr != KERN_SUCCESS) {
		FUNC0("task_policy_set(... TASK_OVERRIDE_QOS_POLICY ...) failed: %d (%s)", kr, FUNC1(kr));
	}

	T_SETUPEND;
}