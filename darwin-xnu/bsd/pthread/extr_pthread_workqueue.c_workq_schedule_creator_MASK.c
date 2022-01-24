#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* workq_threadreq_t ;
struct workqueue {scalar_t__ wq_nthreads; int /*<<< orphan*/  wq_fulfilled; struct uthread* wq_creator; scalar_t__ wq_thidlecount; int /*<<< orphan*/  wq_reqcount; } ;
struct TYPE_7__ {scalar_t__ yields; int /*<<< orphan*/  fulfilled_snapshot; } ;
struct TYPE_8__ {TYPE_1__ uus_workq_park_data; } ;
struct uthread {TYPE_2__ uu_save; struct workqueue* uu_thread; } ;
typedef  scalar_t__ proc_t ;
struct TYPE_9__ {int /*<<< orphan*/  tr_qos; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_KEVENT_REDRIVE_THREADREQ ; 
 int DBG_FUNC_NONE ; 
 int TRACE_wq_creator_select ; 
 struct workqueue* TURNSTILE_INHERITOR_NULL ; 
 int /*<<< orphan*/  TURNSTILE_INHERITOR_THREAD ; 
 int /*<<< orphan*/  TURNSTILE_INHERITOR_WORKQ ; 
 int WORKQ_THREADREQ_CAN_CREATE_THREADS ; 
 int WORKQ_THREADREQ_CREATOR_SYNC_UPDATE ; 
 int WORKQ_THREADREQ_CREATOR_TRANSFER ; 
 int WORKQ_THREADREQ_SET_AST_ON_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct workqueue*) ; 
 scalar_t__ FUNC6 (scalar_t__,struct workqueue*) ; 
 int /*<<< orphan*/  FUNC7 (struct workqueue*) ; 
 struct uthread* FUNC8 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC9 (struct workqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct workqueue*) ; 
 scalar_t__ FUNC11 (TYPE_3__*,struct uthread*) ; 
 int /*<<< orphan*/  FUNC12 (struct workqueue*,struct uthread*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct uthread*) ; 
 TYPE_3__* FUNC14 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC15 (struct workqueue*,struct workqueue*,int /*<<< orphan*/ ) ; 
 scalar_t__ wq_max_threads ; 

__attribute__((used)) static void
FUNC16(proc_t p, struct workqueue *wq, int flags)
{
	workq_threadreq_t req;
	struct uthread *uth;

	FUNC7(wq);
	FUNC3(p || (flags & WORKQ_THREADREQ_CAN_CREATE_THREADS) == 0);

again:
	uth = wq->wq_creator;

	if (!wq->wq_reqcount) {
		if (uth == NULL) {
			FUNC15(wq, TURNSTILE_INHERITOR_NULL, 0);
		}
		return;
	}

	req = FUNC14(wq);
	if (req == NULL) {
		if (flags & WORKQ_THREADREQ_CREATOR_SYNC_UPDATE) {
			FUNC3((flags & WORKQ_THREADREQ_CREATOR_TRANSFER) == 0);
			/*
			 * turnstile propagation code is reaching out to us,
			 * and we still don't want to do anything, do not recurse.
			 */
		} else {
			FUNC15(wq, wq, TURNSTILE_INHERITOR_WORKQ);
		}
		return;
	}

	if (uth) {
		/*
		 * We need to maybe override the creator we already have
		 */
		if (FUNC11(req, uth)) {
			FUNC0(TRACE_wq_creator_select | DBG_FUNC_NONE,
					wq, 1, FUNC5(uth->uu_thread), req->tr_qos, 0);
			FUNC12(wq, uth, req);
		}
	} else if (wq->wq_thidlecount) {
		/*
		 * We need to unpark a creator thread
		 */
		wq->wq_creator = uth = FUNC8(wq);
		if (FUNC11(req, uth)) {
			FUNC12(wq, uth, req);
		}
		FUNC15(wq, uth->uu_thread,
				TURNSTILE_INHERITOR_THREAD);
		FUNC0(TRACE_wq_creator_select | DBG_FUNC_NONE,
				wq, 2, FUNC5(uth->uu_thread), req->tr_qos, 0);
		uth->uu_save.uus_workq_park_data.fulfilled_snapshot = wq->wq_fulfilled;
		uth->uu_save.uus_workq_park_data.yields = 0;
		FUNC13(uth);
	} else {
		/*
		 * We need to allocate a thread...
		 */
		if (FUNC1(wq->wq_nthreads >= wq_max_threads)) {
			/* out of threads, just go away */
		} else if (flags & WORKQ_THREADREQ_SET_AST_ON_FAILURE) {
			FUNC2(FUNC4(), AST_KEVENT_REDRIVE_THREADREQ);
		} else if (!(flags & WORKQ_THREADREQ_CAN_CREATE_THREADS)) {
			/* This can drop the workqueue lock, and take it again */
			FUNC10(wq);
		} else if (FUNC6(p, wq)) {
			goto again;
		} else {
			FUNC9(wq, 0);
		}

		if (flags & WORKQ_THREADREQ_CREATOR_TRANSFER) {
			/*
			 * workq_schedule_creator() failed at creating a thread,
			 * and the responsibility of redriving is now with a thread-call.
			 *
			 * We still need to tell the turnstile the previous creator is gone.
			 */
			FUNC15(wq, NULL, 0);
		}
	}
}