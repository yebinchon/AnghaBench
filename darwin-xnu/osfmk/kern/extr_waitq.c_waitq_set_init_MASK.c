#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {int waitq_prepost; int /*<<< orphan*/  waitq_type; } ;
struct waitq_set {int /*<<< orphan*/  wqset_id; void* wqset_prepost_hook; TYPE_3__ wqset_q; scalar_t__ wqset_prepost_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_2__ wql_setid; TYPE_1__ wql_wqs; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int SYNC_POLICY_PREPOST ; 
 int /*<<< orphan*/  WQL_WQS ; 
 int /*<<< orphan*/  WQSET_NOT_LINKED ; 
 int /*<<< orphan*/  WQT_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq_set*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct waitq_set*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 struct waitq_link* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq_link*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq_link*) ; 

kern_return_t FUNC7(struct waitq_set *wqset,
			     int policy, uint64_t *reserved_link,
			     void *prepost_hook)
{
	struct waitq_link *link;
	kern_return_t ret;

	FUNC1(wqset, 0, sizeof(*wqset));

	ret = FUNC3(&wqset->wqset_q, policy);
	if (ret != KERN_SUCCESS)
		return ret;

	wqset->wqset_q.waitq_type = WQT_SET;
	if (policy & SYNC_POLICY_PREPOST) {
		wqset->wqset_q.waitq_prepost = 1;
		wqset->wqset_prepost_id = 0;
		FUNC0(prepost_hook == NULL);
	} else {
		wqset->wqset_q.waitq_prepost = 0;
		wqset->wqset_prepost_hook = prepost_hook;
	}

	if (reserved_link && *reserved_link != 0) {
		link = FUNC4(*reserved_link, WQL_WQS);

		if (!link)
			FUNC2("Can't allocate link object for waitq set: %p", wqset);

		/* always consume the caller's reference */
		*reserved_link = 0;

		link->wql_wqs.wql_set = wqset;
		FUNC5(link);

		wqset->wqset_id = link->wql_setid.id;
		FUNC6(link);

	} else {
		/*
		 * Lazy allocate the link only when an actual id is needed.
		 */
		wqset->wqset_id = WQSET_NOT_LINKED;
	}

	return KERN_SUCCESS;
}