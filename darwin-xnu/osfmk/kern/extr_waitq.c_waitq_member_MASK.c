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
struct waitq_set {scalar_t__ wqset_id; } ;
struct waitq {scalar_t__ waitq_set_id; } ;
typedef  scalar_t__ kern_return_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LINK_WALK_ONE_LEVEL ; 
 int TRUE ; 
 int /*<<< orphan*/  WQL_ALL ; 
 scalar_t__ WQ_ITERATE_FOUND ; 
 scalar_t__ WQ_ITERATE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct waitq*) ; 
 int /*<<< orphan*/  waitq_inset_cb ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq_set*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct waitq*,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

boolean_t FUNC9(struct waitq *waitq, struct waitq_set *wqset)
{
	kern_return_t kr = WQ_ITERATE_SUCCESS;
	uint64_t setid;

	if (!FUNC5(waitq))
		FUNC1("Invalid waitq: %p", waitq);
	FUNC0(!FUNC2(waitq));

	if (!FUNC7(wqset))
		return FALSE;

	FUNC3(waitq);

	if (!FUNC6(wqset))
                goto out_unlock;

	setid = wqset->wqset_id;

	/* fast path: most waitqs are members of only 1 set */
	if (waitq->waitq_set_id == setid) {
		FUNC4(waitq);
		return TRUE;
	}

	/* walk the link table and look for the Set ID of wqset */
	kr = FUNC8(LINK_WALK_ONE_LEVEL, waitq, waitq->waitq_set_id,
			      WQL_ALL, (void *)&setid, waitq_inset_cb);

out_unlock:
	FUNC4(waitq);
	return (kr == WQ_ITERATE_FOUND);
}