#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_10__ {scalar_t__ n_newsize; scalar_t__ n_size; int /*<<< orphan*/  n_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  NFS_DATA_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  NNEEDINVALIDATE ; 
 int /*<<< orphan*/  NUPDATESIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(nfsnode_t np, int datalocked)
{
	int error;

	FUNC2(272, np, np->n_flag, np->n_size, np->n_newsize);
	if (!datalocked) {
		FUNC6(np, NFS_DATA_LOCK_EXCLUSIVE);
		/* grabbing data lock will automatically update size */
		FUNC7(np);
		FUNC1(272, np, np->n_flag, np->n_size, np->n_newsize);
		return;
	}
	error = FUNC8(np);
	if (error || !FUNC3(np->n_flag, NUPDATESIZE)) {
		if (!error)
			FUNC9(np);
		FUNC1(272, np, np->n_flag, np->n_size, np->n_newsize);
		return;
	}
	FUNC0(np->n_flag, NUPDATESIZE);
	np->n_size = np->n_newsize;
	/* make sure we invalidate buffers the next chance we get */
	FUNC5(np->n_flag, NNEEDINVALIDATE);
	FUNC9(np);
	FUNC10(FUNC4(np), (off_t)np->n_size); /* XXX error? */
	FUNC1(272, np, np->n_flag, np->n_size, np->n_newsize);
}