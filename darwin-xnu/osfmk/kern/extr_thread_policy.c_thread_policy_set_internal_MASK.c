#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_2__* thread_time_constraint_policy_t ;
typedef  int thread_throughput_qos_t ;
typedef  TYPE_3__* thread_throughput_qos_policy_t ;
typedef  TYPE_4__* thread_t ;
typedef  TYPE_5__* thread_qos_policy_t ;
typedef  TYPE_6__* thread_precedence_policy_t ;
typedef  int /*<<< orphan*/  thread_policy_t ;
typedef  int thread_policy_flavor_t ;
typedef  int thread_latency_qos_t ;
typedef  TYPE_7__* thread_latency_qos_policy_t ;
typedef  TYPE_8__* thread_extended_policy_t ;
typedef  TYPE_9__* thread_background_policy_t ;
typedef  TYPE_10__* thread_affinity_policy_t ;
struct task_pend_token {int tpt_update_thread_sfi; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  sched_mode_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_31__ {int /*<<< orphan*/  priority; } ;
struct TYPE_30__ {int /*<<< orphan*/  timeshare; } ;
struct TYPE_29__ {int /*<<< orphan*/  thread_latency_qos_tier; } ;
struct TYPE_28__ {int /*<<< orphan*/  importance; } ;
struct TYPE_27__ {int qos_tier; int /*<<< orphan*/  tier_importance; } ;
struct TYPE_23__ {int /*<<< orphan*/  preemptible; int /*<<< orphan*/  constraint; int /*<<< orphan*/  computation; int /*<<< orphan*/  period; } ;
struct TYPE_26__ {int /*<<< orphan*/  task; int /*<<< orphan*/  importance; TYPE_1__ realtime; int /*<<< orphan*/  active; } ;
struct TYPE_25__ {int /*<<< orphan*/  thread_throughput_qos_tier; } ;
struct TYPE_24__ {int /*<<< orphan*/  preemptible; int /*<<< orphan*/  constraint; int /*<<< orphan*/  computation; int /*<<< orphan*/  period; } ;
struct TYPE_22__ {int /*<<< orphan*/  affinity_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_NOT_SUPPORTED ; 
 int /*<<< orphan*/  KERN_PROTECTION_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 int TASK_POLICY_ATTRIBUTE ; 
 int /*<<< orphan*/  TASK_POLICY_DARWIN_BG ; 
 int TASK_POLICY_DISABLE ; 
 int TASK_POLICY_ENABLE ; 
 int TASK_POLICY_EXTERNAL ; 
 int TASK_POLICY_INTERNAL ; 
 int /*<<< orphan*/  TASK_POLICY_LATENCY_QOS ; 
 int /*<<< orphan*/  TASK_POLICY_QOS_AND_RELPRIO ; 
 int /*<<< orphan*/  TASK_POLICY_THROUGH_QOS ; 
#define  THREAD_AFFINITY_POLICY 135 
 int /*<<< orphan*/  THREAD_AFFINITY_POLICY_COUNT ; 
#define  THREAD_BACKGROUND_POLICY 134 
 int /*<<< orphan*/  THREAD_BACKGROUND_POLICY_COUNT ; 
 int /*<<< orphan*/  THREAD_BACKGROUND_POLICY_DARWIN_BG ; 
#define  THREAD_EXTENDED_POLICY 133 
 int /*<<< orphan*/  THREAD_EXTENDED_POLICY_COUNT ; 
#define  THREAD_LATENCY_QOS_POLICY 132 
 int /*<<< orphan*/  THREAD_LATENCY_QOS_POLICY_COUNT ; 
#define  THREAD_PRECEDENCE_POLICY 131 
 int /*<<< orphan*/  THREAD_PRECEDENCE_POLICY_COUNT ; 
 int THREAD_QOS_LAST ; 
 int /*<<< orphan*/  THREAD_QOS_MIN_TIER_IMPORTANCE ; 
#define  THREAD_QOS_POLICY 130 
 int /*<<< orphan*/  THREAD_QOS_POLICY_COUNT ; 
 int THREAD_QOS_UNSPECIFIED ; 
#define  THREAD_THROUGHPUT_QOS_POLICY 129 
 int /*<<< orphan*/  THREAD_THROUGHPUT_QOS_POLICY_COUNT ; 
#define  THREAD_TIME_CONSTRAINT_POLICY 128 
 int /*<<< orphan*/  THREAD_TIME_CONSTRAINT_POLICY_COUNT ; 
 int /*<<< orphan*/  TH_MODE_FIXED ; 
 int /*<<< orphan*/  TH_MODE_REALTIME ; 
 int /*<<< orphan*/  TH_MODE_TIMESHARE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  max_rt_quantum ; 
 int /*<<< orphan*/  min_rt_quantum ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 

kern_return_t
FUNC17(
                           thread_t                     thread,
                           thread_policy_flavor_t       flavor,
                           thread_policy_t              policy_info,
                           mach_msg_type_number_t       count)
{
	kern_return_t result = KERN_SUCCESS;
	struct task_pend_token pend_token = {};

	FUNC11(thread);
	if (!thread->active) {
		FUNC12(thread);

		return (KERN_TERMINATED);
	}

	switch (flavor) {

	case THREAD_EXTENDED_POLICY:
	{
		boolean_t timeshare = TRUE;

		if (count >= THREAD_EXTENDED_POLICY_COUNT) {
			thread_extended_policy_t info;

			info = (thread_extended_policy_t)policy_info;
			timeshare = info->timeshare;
		}

		sched_mode_t mode = (timeshare == TRUE) ? TH_MODE_TIMESHARE : TH_MODE_FIXED;

		spl_t s = FUNC6();
		FUNC10(thread);

		FUNC15(thread, mode);

		FUNC16(thread);
		FUNC7(s);

		pend_token.tpt_update_thread_sfi = 1;

		break;
	}

	case THREAD_TIME_CONSTRAINT_POLICY:
	{
		thread_time_constraint_policy_t info;

		if (count < THREAD_TIME_CONSTRAINT_POLICY_COUNT) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		info = (thread_time_constraint_policy_t)policy_info;
		if (info->constraint  < info->computation   ||
		    info->computation > max_rt_quantum      ||
		    info->computation < min_rt_quantum      ) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		spl_t s = FUNC6();
		FUNC10(thread);

		thread->realtime.period         = info->period;
		thread->realtime.computation    = info->computation;
		thread->realtime.constraint     = info->constraint;
		thread->realtime.preemptible    = info->preemptible;

		FUNC15(thread, TH_MODE_REALTIME);

		FUNC16(thread);
		FUNC7(s);

		pend_token.tpt_update_thread_sfi = 1;

		break;
	}

	case THREAD_PRECEDENCE_POLICY:
	{
		thread_precedence_policy_t info;

		if (count < THREAD_PRECEDENCE_POLICY_COUNT) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}
		info = (thread_precedence_policy_t)policy_info;

		spl_t s = FUNC6();
		FUNC10(thread);

		thread->importance = info->importance;

		FUNC14(thread);

		FUNC16(thread);
		FUNC7(s);

		break;
	}

	case THREAD_AFFINITY_POLICY:
	{
		thread_affinity_policy_t info;

		if (!FUNC8()) {
			result = KERN_NOT_SUPPORTED;
			break;
		}
		if (count < THREAD_AFFINITY_POLICY_COUNT) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		info = (thread_affinity_policy_t) policy_info;
		/*
		 * Unlock the thread mutex here and
		 * return directly after calling thread_affinity_set().
		 * This is necessary for correct lock ordering because
		 * thread_affinity_set() takes the task lock.
		 */
		FUNC12(thread);
		return FUNC9(thread, info->affinity_tag);
	}

#if CONFIG_EMBEDDED
	case THREAD_BACKGROUND_POLICY:
	{
		thread_background_policy_t info;

		if (count < THREAD_BACKGROUND_POLICY_COUNT) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		if (thread->task != current_task()) {
			result = KERN_PROTECTION_FAILURE;
			break;
		}

		info = (thread_background_policy_t) policy_info;

		int enable;

		if (info->priority == THREAD_BACKGROUND_POLICY_DARWIN_BG)
			enable = TASK_POLICY_ENABLE;
		else
			enable = TASK_POLICY_DISABLE;

		int category = (current_thread() == thread) ? TASK_POLICY_INTERNAL : TASK_POLICY_EXTERNAL;

		proc_set_thread_policy_locked(thread, category, TASK_POLICY_DARWIN_BG, enable, 0, &pend_token);

		break;
	}
#endif /* CONFIG_EMBEDDED */

	case THREAD_THROUGHPUT_QOS_POLICY:
	{
		thread_throughput_qos_policy_t info = (thread_throughput_qos_policy_t) policy_info;
		thread_throughput_qos_t tqos;

		if (count < THREAD_THROUGHPUT_QOS_POLICY_COUNT) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		if ((result = FUNC5(info->thread_throughput_qos_tier)) != KERN_SUCCESS)
			break;

		tqos = FUNC3(info->thread_throughput_qos_tier);

		FUNC2(thread, TASK_POLICY_ATTRIBUTE,
		                              TASK_POLICY_THROUGH_QOS, tqos, 0, &pend_token);

		break;
	}

	case THREAD_LATENCY_QOS_POLICY:
	{
		thread_latency_qos_policy_t info = (thread_latency_qos_policy_t) policy_info;
		thread_latency_qos_t lqos;

		if (count < THREAD_LATENCY_QOS_POLICY_COUNT) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		if ((result = FUNC4(info->thread_latency_qos_tier)) != KERN_SUCCESS)
			break;

		lqos = FUNC3(info->thread_latency_qos_tier);

		FUNC2(thread, TASK_POLICY_ATTRIBUTE,
		                              TASK_POLICY_LATENCY_QOS, lqos, 0, &pend_token);

		break;
	}

	case THREAD_QOS_POLICY:
	{
		thread_qos_policy_t info = (thread_qos_policy_t)policy_info;

		if (count < THREAD_QOS_POLICY_COUNT) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		if (info->qos_tier < 0 || info->qos_tier >= THREAD_QOS_LAST) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		if (info->tier_importance > 0 || info->tier_importance < THREAD_QOS_MIN_TIER_IMPORTANCE) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		if (info->qos_tier == THREAD_QOS_UNSPECIFIED && info->tier_importance != 0) {
			result = KERN_INVALID_ARGUMENT;
			break;
		}

		FUNC2(thread, TASK_POLICY_ATTRIBUTE, TASK_POLICY_QOS_AND_RELPRIO,
		                              info->qos_tier, -info->tier_importance, &pend_token);

		break;
	}

	default:
		result = KERN_INVALID_ARGUMENT;
		break;
	}

	FUNC12(thread);

	FUNC13(thread, &pend_token);

	return (result);
}