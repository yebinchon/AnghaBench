#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {struct waitq* wqp_wq_ptr; } ;
struct wq_prepost {TYPE_2__ wqp_prepostid; TYPE_1__ wqp_wq; } ;
struct waitq {scalar_t__ waitq_prepost_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  WQP_WQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 struct wq_prepost* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wq_prepost*) ; 
 int /*<<< orphan*/  FUNC7 (struct wq_prepost*) ; 

uint64_t FUNC8(struct waitq *waitq)
{
	struct wq_prepost *wqp;
	uint64_t wqp_id = 0;

	if (!FUNC4(waitq))
		return 0;
   
	FUNC0(!FUNC1(waitq));

	FUNC2(waitq);

	if (!FUNC4(waitq))
		goto out_unlock;

	if (waitq->waitq_prepost_id) {
		wqp_id = waitq->waitq_prepost_id;
		goto out_unlock;
	}

	/* don't hold a spinlock while allocating a prepost object */
	FUNC3(waitq);

	wqp = FUNC5(WQP_WQ, 1);
	if (!wqp)
		return 0;

	/* re-acquire the waitq lock */
	FUNC2(waitq);

	if (!FUNC4(waitq)) {
		FUNC6(wqp);
		wqp_id = 0;
		goto out_unlock;
	}

	if (waitq->waitq_prepost_id) {
		/* we were beat by someone else */
		FUNC6(wqp);
		wqp_id = waitq->waitq_prepost_id;
		goto out_unlock;
	}

	wqp->wqp_wq.wqp_wq_ptr = waitq;

	FUNC7(wqp);
	wqp_id = wqp->wqp_prepostid.id;
	waitq->waitq_prepost_id = wqp_id;

	FUNC6(wqp);

out_unlock:
	FUNC3(waitq);

	return wqp_id;
}