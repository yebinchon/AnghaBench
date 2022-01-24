#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ id; } ;
struct wq_prepost {TYPE_1__ wqp_prepostid; } ;
struct waitq {scalar_t__ waitq_prepost_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 
 struct wq_prepost* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct wq_prepost*) ; 
 int /*<<< orphan*/  FUNC9 (struct wq_prepost*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (struct wq_prepost*) ; 

int FUNC12(struct waitq *waitq)
{
	struct wq_prepost *wqp;
	int dropped_lock = 0;

	FUNC0(!FUNC4(waitq));

	if (waitq->waitq_prepost_id == 0)
		return 0;

	wqp = FUNC7(waitq->waitq_prepost_id);
	waitq->waitq_prepost_id = 0;
	if (wqp) {
		uint64_t wqp_id = wqp->wqp_prepostid.id;
		FUNC10("invalidate prepost 0x%llx (refcnt:%d)",
			wqp->wqp_prepostid.id, FUNC11(wqp));
		FUNC8(wqp);
		while (FUNC11(wqp) > 1) {

			/*
			 * Some other thread must have raced us to grab a link
			 * object reference before we invalidated it. This
			 * means that they are probably trying to access the
			 * waitq to which the prepost object points. We need
			 * to wait here until the other thread drops their
			 * reference. We know that no one else can get a
			 * reference (the object has been invalidated), and
			 * that prepost references are short-lived (dropped on
			 * a call to wq_prepost_put). We also know that no one
			 * blocks while holding a reference therefore the
			 * other reference holder must be on-core. We'll just
			 * sit and wait for the other reference to be dropped.
			 */
			FUNC2();

			FUNC6(waitq);
			dropped_lock = 1;
			/*
			 * don't yield here, just spin and assume the other
			 * consumer is already on core...
			 */
			FUNC1(1);

			FUNC5(waitq);

			FUNC3();
		}
		if (FUNC11(wqp) > 0 && wqp->wqp_prepostid.id == wqp_id)
			FUNC9(wqp);
	}

	return dropped_lock;
}