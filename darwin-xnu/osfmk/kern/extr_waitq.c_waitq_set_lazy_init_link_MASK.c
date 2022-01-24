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
struct waitq_set {scalar_t__ wqset_id; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_2__ wql_setid; TYPE_1__ wql_wqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  WQL_WQS ; 
 scalar_t__ WQSET_NOT_LINKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq_set*) ; 
 scalar_t__ FUNC5 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq_set*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct waitq_link* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq_link*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq_link*) ; 

void
FUNC11(struct waitq_set *wqset)
{
	struct waitq_link *link;

	FUNC0(FUNC2() == 0 && FUNC7(FUNC1()));

	FUNC4(wqset);
	if (!FUNC5(wqset)){
		FUNC6(wqset);
		return;
	}

	FUNC0(wqset->wqset_id == WQSET_NOT_LINKED);
	FUNC6(wqset);

	link = FUNC8(WQL_WQS);
	if (!link)
		FUNC3("Can't allocate link object for waitq set: %p", wqset);

	link->wql_wqs.wql_set = wqset;

	FUNC4(wqset);
	if (FUNC5(wqset)) {
		FUNC9(link);
		wqset->wqset_id = link->wql_setid.id;
	}

	FUNC0(wqset->wqset_id != 0);
	FUNC0(wqset->wqset_id != WQSET_NOT_LINKED);

	FUNC6(wqset);

	FUNC10(link);

	return;
}