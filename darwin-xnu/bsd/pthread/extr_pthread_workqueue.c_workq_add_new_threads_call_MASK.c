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
struct workqueue {int /*<<< orphan*/  wq_thidlecount; int /*<<< orphan*/  wq_nthreads; int /*<<< orphan*/  wq_flags; int /*<<< orphan*/  wq_thread_call_last_run; } ;
typedef  void* proc_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int TRACE_wq_add_timer ; 
 int /*<<< orphan*/  WORKQ_THREADREQ_CAN_CREATE_THREADS ; 
 int /*<<< orphan*/  WQ_DELAYED_CALL_SCHEDULED ; 
 int /*<<< orphan*/  WQ_IMMEDIATE_CALL_SCHEDULED ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct workqueue* FUNC5 (void*) ; 
 int /*<<< orphan*/  release ; 
 int /*<<< orphan*/  FUNC6 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct workqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct workqueue*) ; 

__attribute__((used)) static void
FUNC9(void *_p, void *flags)
{
	proc_t p = _p;
	struct workqueue *wq = FUNC5(p);
	uint32_t my_flag = (uint32_t)(uintptr_t)flags;

	/*
	 * workq_exit() will set the workqueue to NULL before
	 * it cancels thread calls.
	 */
	if (!wq) return;

	FUNC2((my_flag == WQ_DELAYED_CALL_SCHEDULED) ||
			(my_flag == WQ_IMMEDIATE_CALL_SCHEDULED));

	FUNC0(TRACE_wq_add_timer | DBG_FUNC_START, wq, FUNC1(wq),
			wq->wq_nthreads, wq->wq_thidlecount, 0);

	FUNC6(wq);

	wq->wq_thread_call_last_run = FUNC3();
	FUNC4(&wq->wq_flags, ~my_flag, release);

	/* This can drop the workqueue lock, and take it again */
	FUNC7(p, wq, WORKQ_THREADREQ_CAN_CREATE_THREADS);

	FUNC8(wq);

	FUNC0(TRACE_wq_add_timer | DBG_FUNC_END, wq, 0,
			wq->wq_nthreads, wq->wq_thidlecount, 0);
}