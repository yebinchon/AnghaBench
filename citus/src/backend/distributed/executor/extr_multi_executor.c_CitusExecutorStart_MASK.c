#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  planTree; } ;
struct TYPE_6__ {TYPE_2__* plannedstmt; } ;
typedef  TYPE_1__ QueryDesc ;
typedef  TYPE_2__ PlannedStmt ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ WritableStandbyCoordinator ; 
 int XactReadOnly ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

void
FUNC13(QueryDesc *queryDesc, int eflags)
{
	PlannedStmt *plannedStmt = queryDesc->plannedstmt;

	if (FUNC0())
	{
		if (FUNC2(plannedStmt) &&
			FUNC3())
		{
			/*
			 * Currently we don't support this to avoid problems with tuple
			 * visibility, locking, etc. For example, change to the reference
			 * table can go through a MultiConnection, which won't be visible
			 * to the locally planned queries.
			 */
			FUNC9(ERROR, (FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC11("cannot join local tables and reference tables in "
								   "a transaction block")));
		}
	}

	/*
	 * We cannot modify XactReadOnly on Windows because it is not
	 * declared with PGDLLIMPORT.
	 */
#ifndef WIN32
	if (FUNC8() && WritableStandbyCoordinator &&
		FUNC1(plannedStmt->planTree))
	{
		FUNC7();
		{
			/*
			 * To enable writes from a hot standby we cheat our way through
			 * the checks in standard_ExecutorStart by temporarily setting
			 * XactReadOnly to false.
			 */
			XactReadOnly = false;
			FUNC12(queryDesc, eflags);
			XactReadOnly = true;
		}
		FUNC4();
		{
			XactReadOnly = true;
			FUNC6();
		}
		FUNC5();
	}
	else
#endif
	{
		FUNC12(queryDesc, eflags);
	}
}