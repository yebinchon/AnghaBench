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
typedef  scalar_t__ user_addr_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ thread_t ;
typedef  scalar_t__ thread_qos_t ;
struct workqueue {int dummy; } ;
struct uu_workq_policy {scalar_t__ qos_override; } ;
struct uthread {struct uu_workq_policy uu_workq_pri; } ;
typedef  int /*<<< orphan*/  pthread_priority_t ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ mach_port_name_t ;
typedef  int /*<<< orphan*/  kport ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 scalar_t__ THREAD_NULL ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int THREAD_TAG_WORKQUEUE ; 
 int TRACE_wq_override_dispatch ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,scalar_t__*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct uthread* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 struct workqueue* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct workqueue*) ; 
 scalar_t__ FUNC17 (struct uu_workq_policy) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct workqueue*,struct uthread*,struct uu_workq_policy,struct uu_workq_policy,int) ; 
 int /*<<< orphan*/  FUNC19 (struct workqueue*) ; 

__attribute__((used)) static int
FUNC20(proc_t p, mach_port_name_t kport,
		pthread_priority_t pp, user_addr_t ulock_addr)
{
	struct uu_workq_policy old_pri, new_pri;
	struct workqueue *wq = FUNC8(p);

	thread_qos_t qos_override = FUNC1(pp);
	if (qos_override == THREAD_QOS_UNSPECIFIED) {
		return EINVAL;
	}

	thread_t thread = FUNC7(kport);
	if (thread == THREAD_NULL) {
		return ESRCH;
	}

	struct uthread *uth = FUNC6(thread);
	if ((FUNC10(thread) & THREAD_TAG_WORKQUEUE) == 0) {
		FUNC9(thread);
		return EPERM;
	}

	FUNC0(TRACE_wq_override_dispatch | DBG_FUNC_NONE,
			wq, FUNC14(thread), 1, pp, 0);

	FUNC11(thread);

	if (ulock_addr) {
		uint64_t val;
		int rc;
		/*
		 * Workaround lack of explicit support for 'no-fault copyin'
		 * <rdar://problem/24999882>, as disabling preemption prevents paging in
		 */
		FUNC4();
		rc = FUNC2(ulock_addr, &val, sizeof(kport));
		FUNC5();
		if (rc == 0 && FUNC15((uint32_t)val) != kport) {
			goto out;
		}
	}

	FUNC16(wq);

	old_pri = uth->uu_workq_pri;
	if (old_pri.qos_override >= qos_override) {
		/* Nothing to do */
	} else if (thread == FUNC3()) {
		new_pri = old_pri;
		new_pri.qos_override = qos_override;
		FUNC18(p, wq, uth, old_pri, new_pri, false);
	} else {
		uth->uu_workq_pri.qos_override = qos_override;
		if (qos_override > FUNC17(old_pri)) {
			FUNC13(thread, qos_override);
		}
	}

	FUNC19(wq);

out:
	FUNC12(thread);
	FUNC9(thread);
	return 0;
}