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
struct nd_defrouter {int stateflags; int /*<<< orphan*/  ifp; int /*<<< orphan*/  rtaddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int NDDRF_STATIC ; 
 int /*<<< orphan*/  FUNC0 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 struct nd_defrouter* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  dr_entry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  nd_defrouter ; 

int
FUNC6(struct nd_defrouter *new)
{
	struct nd_defrouter *dr;

	FUNC4(nd6_mutex);
	dr = FUNC2(&new->rtaddr, new->ifp);
	if (dr == NULL || !(dr->stateflags & NDDRF_STATIC)) {
		if (dr != NULL)
			FUNC0(dr);
		dr = NULL;
	} else {
		FUNC1(&nd_defrouter, dr, dr_entry);
		FUNC3(dr);
		FUNC0(dr);        /* remove list reference */
		FUNC0(dr);
	}
	FUNC5(nd6_mutex);

	return (dr != NULL ? 0 : EINVAL);
}