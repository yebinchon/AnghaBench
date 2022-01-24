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
struct nd_defrouter {int stateflags; int /*<<< orphan*/  nddr_lock; } ;
typedef  int /*<<< orphan*/  drany ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int NDDRF_INSTALLED ; 
 int /*<<< orphan*/  FUNC1 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_defrouter*) ; 
 struct nd_defrouter* FUNC5 (int /*<<< orphan*/ *) ; 
 struct nd_defrouter* FUNC6 (struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_defrouter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  dr_entry ; 
 int /*<<< orphan*/  ifa_mtx_attr ; 
 int /*<<< orphan*/  ifa_mtx_grp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  nd_defrouter ; 

void
FUNC13(void)
{
	struct nd_defrouter *dr, drany;

	FUNC0(nd6_mutex, LCK_MTX_ASSERT_OWNED);

	dr = FUNC5(&nd_defrouter);
	while (dr) {
		FUNC2(dr);
		if (dr->stateflags & NDDRF_INSTALLED) {
			FUNC1(dr);
			FUNC4(dr);
			FUNC12(nd6_mutex);
			FUNC8(dr);
			FUNC11(nd6_mutex);
			FUNC3(dr);
			dr = FUNC5(&nd_defrouter);
		} else {
			FUNC4(dr);
			dr = FUNC6(dr, dr_entry);
		}
	}

	/* Nuke primary (non-scoped) default router */
	FUNC7(&drany, sizeof (drany));
	FUNC10(&drany.nddr_lock, ifa_mtx_grp, ifa_mtx_attr);
	FUNC12(nd6_mutex);
	FUNC8(&drany);
	FUNC9(&drany.nddr_lock, ifa_mtx_grp);
	FUNC11(nd6_mutex);
}