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
struct wq_unlink_ctx {struct waitq_set* unlink_wqset; struct waitq* unlink_wq; } ;
struct waitq {scalar_t__ waitq_set_id; scalar_t__ waitq_prepost_id; int /*<<< orphan*/  waitq_prepost; } ;
struct waitq_set {scalar_t__ wqset_id; int /*<<< orphan*/  wqset_prepost_id; struct waitq wqset_q; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_NOT_IN_SET ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  LINK_WALK_ONE_LEVEL ; 
 int /*<<< orphan*/  WQL_LINK ; 
 scalar_t__ WQ_ITERATE_UNLINKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq_set*) ; 
 int /*<<< orphan*/  waitq_unlink_cb ; 
 int /*<<< orphan*/  waitq_unlink_prepost_cb ; 
 int /*<<< orphan*/  FUNC5 (struct waitq_set*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct waitq*,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t FUNC8(struct waitq *waitq,
                                         struct waitq_set *wqset)
{
	uint64_t setid;
	kern_return_t kr;

	FUNC0(!FUNC2(waitq));

	if (waitq->waitq_set_id == 0) {
		/*
		 * TODO:
		 * it doesn't belong to anyone, and it has a prepost object?
		 * This is an artifact of not cleaning up after kqueues when
		 * they prepost into select sets...
		 */
		if (waitq->waitq_prepost_id != 0)
			(void)FUNC1(waitq);
		return KERN_NOT_IN_SET;
	}

	if (!FUNC5(wqset)) {
		/*
		 * No link has been allocated for the wqset,
		 * so no waitq could have been linked to it.
		 */
		return KERN_NOT_IN_SET;
	}

	setid = wqset->wqset_id;

	if (waitq->waitq_set_id == setid) {
		waitq->waitq_set_id = 0;
		/*
		 * This was the only set to which the waitq belonged: we can
		 * safely release the waitq's prepost object. It doesn't
		 * matter if this function drops and re-acquires the lock
		 * because we're not manipulating waitq state any more.
		 */
		(void)FUNC1(waitq);
		return KERN_SUCCESS;
	}

	/*
	 * The waitq was a member of more that 1 set, so we need to
	 * handle potentially compressing the link table, and
	 * adjusting the waitq->waitq_set_id value.
	 *
	 * Note: we can't free the waitq's associated prepost object (if any)
	 *       because it may be in use by the one or more _other_ sets to
	 *       which this queue belongs.
	 *
	 * Note: This function only handles a single level of the queue linkage.
	 *       Removing a waitq from a set to which it does not directly
	 *       belong is undefined. For example, if a waitq belonged to set
	 *       A, and set A belonged to set B. You can't remove the waitq
	 *       from set B.
	 */
	kr = FUNC6(LINK_WALK_ONE_LEVEL, waitq, waitq->waitq_set_id,
			      WQL_LINK, (void *)&setid, waitq_unlink_cb);

	if (kr == WQ_ITERATE_UNLINKED) {
		struct wq_unlink_ctx ulctx;

		kr = KERN_SUCCESS; /* found it and dis-associated it */

		/* don't look for preposts if it's not prepost-enabled */
		if (!wqset->wqset_q.waitq_prepost)
			goto out;

		FUNC0(!FUNC2(&wqset->wqset_q));

		FUNC3(wqset);
		/*
		 * clear out any prepost from waitq into wqset
		 * TODO: this could be more efficient than a linear search of
		 *       the waitq set's prepost list.
		 */
		ulctx.unlink_wq = waitq;
		ulctx.unlink_wqset = wqset;
		(void)FUNC7(wqset->wqset_prepost_id, (void *)&ulctx,
					 waitq_unlink_prepost_cb);
		FUNC4(wqset);
	} else {
		kr = KERN_NOT_IN_SET; /* waitq is _not_ associated with wqset */
	}

out:
	return kr;
}