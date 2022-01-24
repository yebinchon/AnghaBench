#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct TYPE_4__ {int /*<<< orphan*/  qos_tier; } ;
typedef  TYPE_1__ thread_qos_policy_data_t ;
typedef  int /*<<< orphan*/  thread_policy_t ;
struct TYPE_5__ {int timeshare; } ;
typedef  TYPE_2__ thread_extended_policy_data_t ;
struct workqueue {int /*<<< orphan*/  wq_constrained_threads_scheduled; } ;
struct uu_workq_policy {scalar_t__ qos_bucket; int /*<<< orphan*/  qos_req; } ;
struct uthread {int uu_workq_flags; struct uu_workq_policy uu_workq_pri; struct kqrequest* uu_kqr_bound; } ;
struct kqrequest {int kqr_state; } ;
typedef  int pthread_priority_t ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  enum workq_set_self_flags { ____Placeholder_workq_set_self_flags } workq_set_self_flags ;

/* Variables and functions */
 int EALREADY ; 
 int EBADMSG ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOTSUP ; 
 int EPERM ; 
 scalar_t__ KERN_SUCCESS ; 
 int KQR_WORKLOOP ; 
 int /*<<< orphan*/  THREAD_EXTENDED_POLICY ; 
 int /*<<< orphan*/  THREAD_EXTENDED_POLICY_COUNT ; 
 int /*<<< orphan*/  THREAD_QOS_POLICY ; 
 int /*<<< orphan*/  THREAD_QOS_POLICY_COUNT ; 
 int THREAD_TAG_WORKQUEUE ; 
 int UT_WORKQ_OVERCOMMIT ; 
 int WORKQ_SET_SELF_FIXEDPRIORITY_FLAG ; 
 int WORKQ_SET_SELF_QOS_FLAG ; 
 int WORKQ_SET_SELF_TIMESHARE_FLAG ; 
 int WORKQ_SET_SELF_VOUCHER_FLAG ; 
 int WORKQ_SET_SELF_WQ_KEVENT_UNBIND ; 
 scalar_t__ WORKQ_THREAD_QOS_MANAGER ; 
 int _PTHREAD_PRIORITY_OVERCOMMIT_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 struct uthread* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kqrequest*) ; 
 struct workqueue* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct workqueue*,struct uthread*,struct uu_workq_policy,struct uu_workq_policy,int) ; 
 int /*<<< orphan*/  FUNC10 (struct workqueue*) ; 
 scalar_t__ wq_max_constrained_threads ; 

__attribute__((used)) static int
FUNC11(proc_t p, thread_t th, pthread_priority_t priority,
		mach_port_name_t voucher, enum workq_set_self_flags flags)
{
	struct uthread *uth = FUNC1(th);
	struct workqueue *wq = FUNC3(p);

	kern_return_t kr;
	int unbind_rv = 0, qos_rv = 0, voucher_rv = 0, fixedpri_rv = 0;
	bool is_wq_thread = (FUNC4(th) & THREAD_TAG_WORKQUEUE);

	if (flags & WORKQ_SET_SELF_WQ_KEVENT_UNBIND) {
		if (!is_wq_thread) {
			unbind_rv = EINVAL;
			goto qos;
		}

		if (uth->uu_workq_pri.qos_bucket == WORKQ_THREAD_QOS_MANAGER) {
			unbind_rv = EINVAL;
			goto qos;
		}

		struct kqrequest *kqr = uth->uu_kqr_bound;
		if (kqr == NULL) {
			unbind_rv = EALREADY;
			goto qos;
		}

		if (kqr->kqr_state & KQR_WORKLOOP) {
			unbind_rv = EINVAL;
			goto qos;
		}

		FUNC2(p, uth->uu_kqr_bound);
	}

qos:
	if (flags & WORKQ_SET_SELF_QOS_FLAG) {
		thread_qos_policy_data_t new_policy;

		if (!FUNC0(priority, &new_policy)) {
			qos_rv = EINVAL;
			goto voucher;
		}

		if (!is_wq_thread) {
			/*
			 * Threads opted out of QoS can't change QoS
			 */
			if (!FUNC5(th)) {
				qos_rv = EPERM;
				goto voucher;
			}
		} else if (uth->uu_workq_pri.qos_bucket == WORKQ_THREAD_QOS_MANAGER) {
			/*
			 * Workqueue manager threads can't change QoS
			 */
			qos_rv = EINVAL;
			goto voucher;
		} else {
			/*
			 * For workqueue threads, possibly adjust buckets and redrive thread
			 * requests.
			 */
			bool old_overcommit = uth->uu_workq_flags & UT_WORKQ_OVERCOMMIT;
			bool new_overcommit = priority & _PTHREAD_PRIORITY_OVERCOMMIT_FLAG;
			struct uu_workq_policy old_pri, new_pri;
			bool force_run = false;

			FUNC8(wq);

			if (old_overcommit != new_overcommit) {
				uth->uu_workq_flags ^= UT_WORKQ_OVERCOMMIT;
				if (old_overcommit) {
					wq->wq_constrained_threads_scheduled++;
				} else if (wq->wq_constrained_threads_scheduled-- ==
						wq_max_constrained_threads) {
					force_run = true;
				}
			}

			old_pri = new_pri = uth->uu_workq_pri;
			new_pri.qos_req = new_policy.qos_tier;
			FUNC9(p, wq, uth, old_pri, new_pri, force_run);
			FUNC10(wq);
		}

		kr = FUNC6(th, THREAD_QOS_POLICY,
				(thread_policy_t)&new_policy, THREAD_QOS_POLICY_COUNT);
		if (kr != KERN_SUCCESS) {
			qos_rv = EINVAL;
		}
	}

voucher:
	if (flags & WORKQ_SET_SELF_VOUCHER_FLAG) {
		kr = FUNC7(voucher);
		if (kr != KERN_SUCCESS) {
			voucher_rv = ENOENT;
			goto fixedpri;
		}
	}

fixedpri:
	if (qos_rv) goto done;
	if (flags & WORKQ_SET_SELF_FIXEDPRIORITY_FLAG) {
		thread_extended_policy_data_t extpol = {.timeshare = 0};

		if (is_wq_thread) {
			/* Not allowed on workqueue threads */
			fixedpri_rv = ENOTSUP;
			goto done;
		}

		kr = FUNC6(th, THREAD_EXTENDED_POLICY,
				(thread_policy_t)&extpol, THREAD_EXTENDED_POLICY_COUNT);
		if (kr != KERN_SUCCESS) {
			fixedpri_rv = EINVAL;
			goto done;
		}
	} else if (flags & WORKQ_SET_SELF_TIMESHARE_FLAG) {
		thread_extended_policy_data_t extpol = {.timeshare = 1};

		if (is_wq_thread) {
			/* Not allowed on workqueue threads */
			fixedpri_rv = ENOTSUP;
			goto done;
		}

		kr = FUNC6(th, THREAD_EXTENDED_POLICY,
				(thread_policy_t)&extpol, THREAD_EXTENDED_POLICY_COUNT);
		if (kr != KERN_SUCCESS) {
			fixedpri_rv = EINVAL;
			goto done;
		}
	}

done:
	if (qos_rv && voucher_rv) {
		/* Both failed, give that a unique error. */
		return EBADMSG;
	}

	if (unbind_rv) {
		return unbind_rv;
	}

	if (qos_rv) {
		return qos_rv;
	}

	if (voucher_rv) {
		return voucher_rv;
	}

	if (fixedpri_rv) {
		return fixedpri_rv;
	}

	return 0;
}