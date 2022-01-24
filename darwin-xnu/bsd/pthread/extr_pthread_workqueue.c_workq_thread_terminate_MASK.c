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
struct workqueue {scalar_t__ wq_reqcount; int /*<<< orphan*/  wq_nthreads; int /*<<< orphan*/  wq_thidlecount; int /*<<< orphan*/  wq_thrunlist; } ;
struct uthread {int uu_workq_flags; int /*<<< orphan*/  uu_thread; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct uthread*,int /*<<< orphan*/ ) ; 
 int TRACE_wq_thread_terminate ; 
 int UT_WORKQ_DYING ; 
 int /*<<< orphan*/  WORKQ_THREADREQ_CAN_CREATE_THREADS ; 
 int /*<<< orphan*/  FUNC1 (int,struct workqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct workqueue* FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uu_workq_entry ; 
 int /*<<< orphan*/  FUNC4 (struct workqueue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,struct workqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct workqueue*) ; 
 scalar_t__ wq_max_threads ; 

void
FUNC8(struct proc *p, struct uthread *uth)
{
	struct workqueue *wq = FUNC2(p);

	FUNC5(wq);
	FUNC0(&wq->wq_thrunlist, uth, uu_workq_entry);
	if (uth->uu_workq_flags & UT_WORKQ_DYING) {
		FUNC1(TRACE_wq_thread_terminate | DBG_FUNC_END,
				wq, wq->wq_thidlecount, 0, 0, 0);
		FUNC4(wq, 1);
	}
	if (wq->wq_nthreads-- == wq_max_threads) {
		/*
		 * We got under the thread limit again, which may have prevented
		 * thread creation from happening, redrive if there are pending requests
		 */
		if (wq->wq_reqcount) {
			FUNC6(p, wq, WORKQ_THREADREQ_CAN_CREATE_THREADS);
		}
	}
	FUNC7(wq);

	FUNC3(uth->uu_thread);
}