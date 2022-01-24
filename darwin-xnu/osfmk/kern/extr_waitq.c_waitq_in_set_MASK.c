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
struct waitq_link {int dummy; } ;
struct waitq {scalar_t__ waitq_set_id; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 
 struct waitq_link* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq_link*) ; 

boolean_t FUNC5(struct waitq *waitq)
{
	struct waitq_link *link;
	boolean_t inset = FALSE;

	if (FUNC0(waitq))
		return FALSE;

	FUNC1(waitq);

	if (!waitq->waitq_set_id)
		goto out_unlock;

	link = FUNC3(waitq->waitq_set_id);
	if (link) {
		/* if we get here, the waitq is in _at_least_one_ set */
		inset = TRUE;
		FUNC4(link);
	} else {
		/* we can just optimize this for next time */
		waitq->waitq_set_id = 0;
	}

out_unlock:
	FUNC2(waitq);
	return inset;
}