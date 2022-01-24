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
typedef  scalar_t__ waitq_lock_state_t ;
typedef  scalar_t__ uint64_t ;
struct waitq_set {int /*<<< orphan*/  wqset_id; } ;
struct waitq_link {int dummy; } ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_NO_SPACE ; 
 scalar_t__ FUNC0 (struct waitq*) ; 
 scalar_t__ WAITQ_SHOULD_LOCK ; 
 int /*<<< orphan*/  WQL_LINK ; 
 int /*<<< orphan*/  FUNC1 (char*,struct waitq*) ; 
 scalar_t__ FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*,int /*<<< orphan*/ ,struct waitq_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC10 (char*,void*,int /*<<< orphan*/ ) ; 
 struct waitq_link* FUNC11 (int /*<<< orphan*/ ) ; 
 struct waitq_link* FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct waitq_link*) ; 

kern_return_t FUNC14(struct waitq *waitq, struct waitq_set *wqset,
			 waitq_lock_state_t lock_state, uint64_t *reserved_link)
{
	kern_return_t kr;
	struct waitq_link *link;
	int should_lock = (lock_state == WAITQ_SHOULD_LOCK);

	if (!FUNC7(waitq) || FUNC2(waitq))
		FUNC1("Invalid waitq: %p", waitq);

	if (!FUNC9(wqset))
		return KERN_INVALID_ARGUMENT;

	if (!reserved_link || *reserved_link == 0) {
		if (!FUNC8(wqset)) {
			FUNC5(wqset);
		}
	}

	FUNC10("Link waitq %p to wqset 0x%llx",
		(void *)FUNC0(waitq), wqset->wqset_id);

	/*
	 * We _might_ need a new link object here, so we'll grab outside
	 * the lock because the alloc call _might_ block.
	 *
	 * If the caller reserved a link beforehand, then wql_get_link
	 * is guaranteed not to block because the caller holds an extra
	 * reference to the link which, in turn, hold a reference to the
	 * link table.
	 */
	if (reserved_link && *reserved_link != 0) {
		link = FUNC12(*reserved_link, WQL_LINK);
		/* always consume the caller's reference */
		*reserved_link = 0;
	} else {
		link = FUNC11(WQL_LINK);
	}
	if (!link)
		return KERN_NO_SPACE;

	if (should_lock) {
		FUNC4(waitq);
	}

	kr = FUNC3(waitq, wqset->wqset_id, link);

	if (should_lock) {
		FUNC6(waitq);
	}

	FUNC13(link);

	return kr;
}