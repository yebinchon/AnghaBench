#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_6__ {int /*<<< orphan*/ * n_datalockowner; int /*<<< orphan*/  n_flag; int /*<<< orphan*/  n_datalock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUPDATESIZE ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

void
FUNC6(nfsnode_t np, int updatesize)
{
	int mine = (np->n_datalockowner == FUNC3());
	FUNC1(271, np, np->n_datalockowner, FUNC3(), 0);
	if (updatesize && mine && FUNC2(np->n_flag, NUPDATESIZE))
		FUNC5(np, 1);
	np->n_datalockowner = NULL;
	FUNC4(&np->n_datalock);
	if (updatesize && !mine && FUNC2(np->n_flag, NUPDATESIZE))
		FUNC5(np, 0);
	FUNC0(271, np, np->n_datalockowner, FUNC3(), 0);
}