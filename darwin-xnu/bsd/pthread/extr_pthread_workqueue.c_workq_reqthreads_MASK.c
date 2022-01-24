#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* workq_threadreq_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ thread_qos_t ;
struct workqueue {scalar_t__ wq_nthreads; int /*<<< orphan*/  wq_constrained_threads_scheduled; int /*<<< orphan*/  wq_fulfilled; int /*<<< orphan*/ * wq_thscheduled_count; scalar_t__ wq_thidlecount; } ;
struct TYPE_9__ {TYPE_3__* thread_request; scalar_t__ upcall_flags; } ;
struct TYPE_10__ {TYPE_1__ uus_workq_park_data; } ;
struct uthread {TYPE_2__ uu_save; int /*<<< orphan*/  uu_workq_flags; } ;
struct proc {int dummy; } ;
typedef  int pthread_priority_t ;
struct TYPE_11__ {int tr_flags; int tr_qos; scalar_t__ tr_count; int /*<<< orphan*/  tr_state; int /*<<< orphan*/  tr_entry; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int ECANCELED ; 
 int EINVAL ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int TRACE_wq_thread_request_initiate ; 
 int TRACE_wq_wqops_reqthreads ; 
 int TR_FLAG_OVERCOMMIT ; 
 int TR_FLAG_WL_PARAMS ; 
 int /*<<< orphan*/  TR_STATE_NEW ; 
 scalar_t__ UINT16_MAX ; 
 int /*<<< orphan*/  UT_WORKQ_EARLY_BOUND ; 
 int /*<<< orphan*/  UT_WORKQ_OVERCOMMIT ; 
 int /*<<< orphan*/  WORKQ_THREADREQ_CAN_CREATE_THREADS ; 
 scalar_t__ WQ_FLAG_THREAD_NEWSPI ; 
 scalar_t__ WQ_FLAG_THREAD_OVERCOMMIT ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int _PTHREAD_PRIORITY_OVERCOMMIT_FLAG ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct workqueue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct workqueue* FUNC7 (struct proc*) ; 
 scalar_t__ FUNC8 (struct proc*,struct workqueue*) ; 
 scalar_t__ FUNC9 (struct workqueue*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct workqueue*) ; 
 struct uthread* FUNC11 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*,struct workqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct workqueue*,struct uthread*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct uthread*) ; 
 scalar_t__ FUNC15 (struct workqueue*,TYPE_3__*) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (struct workqueue*) ; 
 int /*<<< orphan*/  workq_zone_threadreq ; 
 scalar_t__ wq_max_threads ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC20(struct proc *p, uint32_t reqcount, pthread_priority_t pp)
{
	thread_qos_t qos = FUNC1(pp);
	struct workqueue *wq = FUNC7(p);
	uint32_t unpaced, upcall_flags = WQ_FLAG_THREAD_NEWSPI;

	if (wq == NULL || reqcount <= 0 || reqcount > UINT16_MAX ||
			qos == THREAD_QOS_UNSPECIFIED) {
		return EINVAL;
	}

	FUNC0(TRACE_wq_wqops_reqthreads | DBG_FUNC_NONE,
			wq, reqcount, pp, 0, 0);

	workq_threadreq_t req = FUNC18(workq_zone_threadreq);
	FUNC6(&req->tr_entry);
	req->tr_state = TR_STATE_NEW;
	req->tr_flags = 0;
	req->tr_qos   = qos;

	if (pp & _PTHREAD_PRIORITY_OVERCOMMIT_FLAG) {
		req->tr_flags |= TR_FLAG_OVERCOMMIT;
		upcall_flags |= WQ_FLAG_THREAD_OVERCOMMIT;
	}

	FUNC0(TRACE_wq_thread_request_initiate | DBG_FUNC_NONE,
			wq, FUNC16(req), req->tr_qos, reqcount, 0);

	FUNC10(wq);
	do {
		if (FUNC3(wq)) {
			goto exiting;
		}

		/*
		 * When userspace is asking for parallelism, wakeup up to (reqcount - 1)
		 * threads without pacing, to inform the scheduler of that workload.
		 *
		 * The last requests, or the ones that failed the admission checks are
		 * enqueued and go through the regular creator codepath.
		 *
		 * If there aren't enough threads, add one, but re-evaluate everything
		 * as conditions may now have changed.
		 */
		if (reqcount > 1 && (req->tr_flags & TR_FLAG_OVERCOMMIT) == 0) {
			unpaced = FUNC9(wq, qos, NULL, false);
			if (unpaced >= reqcount - 1) {
				unpaced = reqcount - 1;
			}
		} else {
			unpaced = reqcount - 1;
		}

		/*
		 * This path does not currently handle custom workloop parameters
		 * when creating threads for parallelism.
		 */
		FUNC5(!(req->tr_flags & TR_FLAG_WL_PARAMS));

		/*
		 * This is a trimmed down version of workq_threadreq_bind_and_unlock()
		 */
		while (unpaced > 0 && wq->wq_thidlecount) {
			struct uthread *uth = FUNC11(wq);

			FUNC4(wq, qos);
			wq->wq_thscheduled_count[FUNC2(qos)]++;
			FUNC13(wq, uth, req);
			wq->wq_fulfilled++;

			uth->uu_workq_flags |= UT_WORKQ_EARLY_BOUND;
			if ((req->tr_flags & TR_FLAG_OVERCOMMIT) == 0) {
				uth->uu_workq_flags &= ~UT_WORKQ_OVERCOMMIT;
				wq->wq_constrained_threads_scheduled++;
			}
			uth->uu_save.uus_workq_park_data.upcall_flags = upcall_flags;
			uth->uu_save.uus_workq_park_data.thread_request = req;
			FUNC14(uth);
			unpaced--;
			reqcount--;
		}
	} while (unpaced && wq->wq_nthreads < wq_max_threads &&
			FUNC8(p, wq));

	if (FUNC3(wq)) {
		goto exiting;
	}

	req->tr_count = reqcount;
	if (FUNC15(wq, req)) {
		/* This can drop the workqueue lock, and take it again */
		FUNC12(p, wq, WORKQ_THREADREQ_CAN_CREATE_THREADS);
	}
	FUNC17(wq);
	return 0;

exiting:
	FUNC17(wq);
	FUNC19(workq_zone_threadreq, req);
	return ECANCELED;
}