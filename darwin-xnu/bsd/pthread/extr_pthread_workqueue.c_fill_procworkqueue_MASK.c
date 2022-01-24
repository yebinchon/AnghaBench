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
typedef  int wq_thactive_t ;
struct workqueue {scalar_t__ wq_nthreads; scalar_t__ wq_constrained_threads_scheduled; scalar_t__ wq_threads_scheduled; } ;
struct proc_workqueueinfo {scalar_t__ pwq_nthreads; int pwq_runthreads; int /*<<< orphan*/  pwq_state; scalar_t__ pwq_blockedthreads; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  WORKQ_THREAD_QOS_MANAGER ; 
 int /*<<< orphan*/  WORKQ_THREAD_QOS_MIN ; 
 int /*<<< orphan*/  WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT ; 
 int /*<<< orphan*/  WQ_EXCEEDED_TOTAL_THREAD_LIMIT ; 
 int FUNC0 (struct workqueue*) ; 
 int FUNC1 (struct workqueue*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct workqueue* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct workqueue*) ; 
 scalar_t__ wq_max_constrained_threads ; 
 scalar_t__ wq_max_threads ; 

int
FUNC6(proc_t p, struct proc_workqueueinfo * pwqinfo)
{
	struct workqueue *wq = FUNC3(p);
	int error = 0;
	int	activecount;

	if (wq == NULL) {
		return EINVAL;
	}

	/*
	 * This is sometimes called from interrupt context by the kperf sampler.
	 * In that case, it's not safe to spin trying to take the lock since we
	 * might already hold it.  So, we just try-lock it and error out if it's
	 * already held.  Since this is just a debugging aid, and all our callers
	 * are able to handle an error, that's fine.
	 */
	bool locked = FUNC4(wq);
	if (!locked) {
		return EBUSY;
	}

	wq_thactive_t act = FUNC0(wq);
	activecount = FUNC1(wq, act,
			WORKQ_THREAD_QOS_MIN, NULL, NULL);
	if (act & FUNC2(WORKQ_THREAD_QOS_MANAGER)) {
		activecount++;
	}
	pwqinfo->pwq_nthreads = wq->wq_nthreads;
	pwqinfo->pwq_runthreads = activecount;
	pwqinfo->pwq_blockedthreads = wq->wq_threads_scheduled - activecount;
	pwqinfo->pwq_state = 0;

	if (wq->wq_constrained_threads_scheduled >= wq_max_constrained_threads) {
		pwqinfo->pwq_state |= WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT;
	}

	if (wq->wq_nthreads >= wq_max_threads) {
		pwqinfo->pwq_state |= WQ_EXCEEDED_TOTAL_THREAD_LIMIT;
	}

	FUNC5(wq);
	return error;
}