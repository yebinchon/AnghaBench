#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int period; int constraint; int computation; int /*<<< orphan*/  preemptible; } ;
typedef  TYPE_1__ thread_time_constraint_policy_data_t ;
typedef  int /*<<< orphan*/  thread_policy_t ;
struct TYPE_4__ {int affinity_tag; } ;
typedef  TYPE_2__ thread_affinity_policy_data_t ;
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTATION_NANOS ; 
 int /*<<< orphan*/  CONSTRAINT_NANOS ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
#define  MY_POLICY_FIXEDPRI 130 
#define  MY_POLICY_REALTIME 129 
#define  MY_POLICY_TIMESHARE 128 
 int SCHED_OTHER ; 
 int SCHED_RR ; 
 int /*<<< orphan*/  THREAD_AFFINITY_POLICY ; 
 int /*<<< orphan*/  THREAD_AFFINITY_POLICY_COUNT ; 
 int /*<<< orphan*/  THREAD_TIME_CONSTRAINT_POLICY ; 
 int /*<<< orphan*/  THREAD_TIME_CONSTRAINT_POLICY_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ g_do_affinity ; 
 int g_policy ; 
 scalar_t__ g_priority ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(uint32_t my_id)
{
	kern_return_t kr;
	errno_t ret;
	thread_time_constraint_policy_data_t pol;

	if (g_priority) {
		int policy = SCHED_OTHER;
		if (g_policy == MY_POLICY_FIXEDPRI)
			policy = SCHED_RR;

		struct sched_param param = {.sched_priority = (int)g_priority};
		if ((ret = FUNC7(FUNC5(), policy, &param)))
			FUNC0(EX_OSERR, ret, "pthread_setschedparam: %d", my_id);
	}

	switch (g_policy) {
		case MY_POLICY_TIMESHARE:
			break;
		case MY_POLICY_REALTIME:
			/* Hard-coded realtime parameters (similar to what Digi uses) */
			pol.period      = 100000;
			pol.constraint  = (uint32_t) FUNC4(CONSTRAINT_NANOS);
			pol.computation = (uint32_t) FUNC4(COMPUTATION_NANOS);
			pol.preemptible = 0; /* Ignored by OS */

			kr = FUNC8(FUNC3(), THREAD_TIME_CONSTRAINT_POLICY,
			                       (thread_policy_t) &pol, THREAD_TIME_CONSTRAINT_POLICY_COUNT);
			FUNC2(my_id, kr);
			break;
		case MY_POLICY_FIXEDPRI:
			ret = FUNC6();
			if (ret) FUNC0(EX_OSERR, ret, "pthread_set_fixedpriority_self");
			break;
		default:
			FUNC1(EX_USAGE, "invalid policy type %d", g_policy);
	}

	if (g_do_affinity) {
		thread_affinity_policy_data_t affinity;

		affinity.affinity_tag = my_id % 2;

		kr = FUNC8(FUNC3(), THREAD_AFFINITY_POLICY,
		                       (thread_policy_t)&affinity, THREAD_AFFINITY_POLICY_COUNT);
		FUNC2(my_id, kr);
	}

	return 0;
}