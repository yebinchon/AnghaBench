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
struct TYPE_6__ {int /*<<< orphan*/  n_datalockowner; int /*<<< orphan*/  n_flag; int /*<<< orphan*/  n_datalock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NFS_DATA_LOCK_SHARED ; 
 int /*<<< orphan*/  NUPDATESIZE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void
FUNC7(nfsnode_t np, int locktype, int updatesize)
{
	FUNC1(270, np, locktype, np->n_datalockowner, 0);
	if (locktype == NFS_DATA_LOCK_SHARED) {
		if (updatesize && FUNC2(np->n_flag, NUPDATESIZE))
			FUNC6(np, 0);
		FUNC5(&np->n_datalock);
	} else {
		FUNC4(&np->n_datalock);
		np->n_datalockowner = FUNC3();
		if (updatesize && FUNC2(np->n_flag, NUPDATESIZE))
			FUNC6(np, 1);
	}
	FUNC0(270, np, locktype, np->n_datalockowner, 0);
}