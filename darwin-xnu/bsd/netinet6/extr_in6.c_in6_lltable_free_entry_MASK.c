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
struct lltable {int /*<<< orphan*/  llt_af; struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; int /*<<< orphan*/  lle_timer; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int LLE_LINKED ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct lltable*,struct llentry*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct lltable *llt, struct llentry *lle)
{
	struct ifnet *ifp;

	FUNC2(lle);
	FUNC0(llt != NULL, ("lltable is NULL"));

	/* Unlink entry from table */
	if ((lle->la_flags & LLE_LINKED) != 0) {
		ifp = llt->llt_ifp;
		FUNC3(ifp, llt->llt_af);
		FUNC5(llt, lle);
	}

#if 0
	/* XXX TBD */
	if (thread_call_cancel(lle->lle_timer) == TRUE)
		LLE_REMREF(lle);
#endif
	FUNC4(lle);
}