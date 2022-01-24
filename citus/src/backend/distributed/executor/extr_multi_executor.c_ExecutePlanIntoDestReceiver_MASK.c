#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int visible; } ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/  PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 long FETCH_ALL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,long,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(PlannedStmt *queryPlan, ParamListInfo params,
							DestReceiver *dest)
{
	Portal portal = NULL;
	int eflags = 0;
	long count = FETCH_ALL;

	/* create a new portal for executing the query */
	portal = FUNC0();

	/* don't display the portal in pg_cursors, it is for internal use only */
	portal->visible = false;

	FUNC2(portal,
					  NULL,
					  "",
					  "SELECT",
					  FUNC6(queryPlan),
					  NULL);

	FUNC5(portal, params, eflags, FUNC1());
	FUNC4(portal, count, false, true, dest, dest, NULL);
	FUNC3(portal, false);
}