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
typedef  scalar_t__ thread_qos_t ;
struct workqueue {scalar_t__ wq_reqcount; } ;
struct uu_workq_policy {scalar_t__ qos_bucket; } ;
struct uthread {int /*<<< orphan*/  uu_thread; struct uu_workq_policy uu_workq_pri; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int WORKQ_THREADREQ_CAN_CREATE_THREADS ; 
 int /*<<< orphan*/  FUNC0 (struct workqueue*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct uu_workq_policy) ; 
 scalar_t__ FUNC3 (struct uu_workq_policy) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct workqueue*,int) ; 

__attribute__((used)) static void
FUNC5(proc_t p, struct workqueue *wq, struct uthread *uth,
		struct uu_workq_policy old_pri, struct uu_workq_policy new_pri,
		bool force_run)
{
	thread_qos_t old_bucket = old_pri.qos_bucket;
	thread_qos_t new_bucket = FUNC2(new_pri);

	if (old_bucket != new_bucket) {
		FUNC0(wq, old_bucket, new_bucket);
	}

	new_pri.qos_bucket = new_bucket;
	uth->uu_workq_pri = new_pri;

	if (FUNC3(old_pri) != new_bucket) {
		FUNC1(uth->uu_thread, new_bucket);
	}

	if (wq->wq_reqcount && (old_bucket > new_bucket || force_run)) {
		int flags = WORKQ_THREADREQ_CAN_CREATE_THREADS;
		if (old_bucket > new_bucket) {
			/*
			 * When lowering our bucket, we may unblock a thread request,
			 * but we can't drop our priority before we have evaluated
			 * whether this is the case, and if we ever drop the workqueue lock
			 * that would cause a priority inversion.
			 *
			 * We hence have to disallow thread creation in that case.
			 */
			flags = 0;
		}
		FUNC4(p, wq, flags);
	}
}