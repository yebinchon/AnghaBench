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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  right_setid; int /*<<< orphan*/  left_setid; } ;
struct waitq_link {TYPE_1__ wql_link; } ;
struct waitq {int dummy; } ;

/* Variables and functions */
 scalar_t__ WQL_LINK ; 
 int WQ_ITERATE_CONTINUE ; 
 int WQ_ITERATE_INVALID ; 
 int FUNC0 (struct waitq*,int /*<<< orphan*/ ,struct waitq_link*,struct waitq_link*,struct waitq_link*) ; 
 struct waitq_link* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq_link*) ; 
 scalar_t__ FUNC4 (struct waitq_link*) ; 

__attribute__((used)) static int FUNC5(struct waitq *waitq, void *ctx,
			   struct waitq_link *link)
{
	uint64_t setid = *((uint64_t *)ctx);
	struct waitq_link *right, *left;
	int ret = 0;

	if (FUNC4(link) != WQL_LINK)
		return WQ_ITERATE_CONTINUE;

	do  {
		left  = FUNC1(link->wql_link.left_setid);
		right = FUNC1(link->wql_link.right_setid);

		ret = FUNC0(waitq, setid, link, left, right);

		FUNC3(left);
		FUNC3(right);

		if (!FUNC2(link))
			return WQ_ITERATE_INVALID;
		/* A ret value of UNLINKED will break us out of table walk */
	} while (ret == WQ_ITERATE_INVALID);

	return ret;
}