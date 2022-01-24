#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* workq_threadreq_t ;
struct workqueue {int wq_reqcount; TYPE_1__* wq_event_manager_threadreq; } ;
struct TYPE_5__ {scalar_t__ tr_state; int tr_count; scalar_t__ tr_qos; int tr_flags; int /*<<< orphan*/  tr_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ; 
 int TR_FLAG_KEVENT ; 
 int TR_FLAG_OVERCOMMIT ; 
 scalar_t__ TR_STATE_NEW ; 
 scalar_t__ TR_STATE_QUEUED ; 
 scalar_t__ WORKQ_THREAD_QOS_MANAGER ; 
 int /*<<< orphan*/  FUNC0 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct workqueue*,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC5(struct workqueue *wq, workq_threadreq_t req)
{
	FUNC1(req->tr_state == TR_STATE_NEW);

	req->tr_state = TR_STATE_QUEUED;
	wq->wq_reqcount += req->tr_count;

	if (req->tr_qos == WORKQ_THREAD_QOS_MANAGER) {
		FUNC1(wq->wq_event_manager_threadreq == NULL);
		FUNC1(req->tr_flags & TR_FLAG_KEVENT);
		FUNC1(req->tr_count == 1);
		wq->wq_event_manager_threadreq = req;
		return true;
	}
	if (FUNC2(FUNC4(wq, req),
			&req->tr_entry, FUNC3(req),
			PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
		if ((req->tr_flags & TR_FLAG_OVERCOMMIT) == 0) {
			FUNC0(wq);
		}
		return true;
	}
	return false;
}