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
typedef  scalar_t__ uint64_t ;
struct waitq {scalar_t__ waitq_set_id; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  LINK_WALK_ONE_LEVEL ; 
 scalar_t__ FUNC0 (struct waitq*) ; 
 int /*<<< orphan*/  WQL_LINK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  waitq_unlink_all_cb ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct waitq*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,void*) ; 

kern_return_t FUNC7(struct waitq *waitq)
{
	uint64_t old_set_id = 0;
	FUNC6("unlink waitq %p from all sets",
		(void *)FUNC0(waitq));
	FUNC1(!FUNC3(waitq));

	/* it's not a member of any sets */
	if (waitq->waitq_set_id == 0) {
		FUNC4(waitq);
		return KERN_SUCCESS;
	}

	old_set_id = waitq->waitq_set_id;
	waitq->waitq_set_id = 0;

	/*
	 * invalidate the prepost entry for this waitq.
	 * This may drop and re-acquire the waitq lock, but that's OK because
	 * if it was added to another set and preposted to that set in the
	 * time we drop the lock, the state will remain consistent.
	 */
	(void)FUNC2(waitq);

	FUNC4(waitq);

	if (old_set_id) {
		/*
		 * Walk the link table and invalidate each LINK object that
		 * used to connect this waitq to one or more sets: this works
		 * because WQL_LINK objects are private to each wait queue
		 */
		(void)FUNC5(LINK_WALK_ONE_LEVEL, waitq, old_set_id,
				       WQL_LINK, NULL, waitq_unlink_all_cb);
	}

	return KERN_SUCCESS;
}