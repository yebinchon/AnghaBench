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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 

Node *
FUNC8(const char *ddlCommand)
{
	Node *parseTreeNode = NULL;
	List *parseTreeList = NULL;
	uint32 parseTreeCount = 0;

	parseTreeList = FUNC7(ddlCommand);

	/* log immediately if dictated by log statement */
	if (FUNC1(parseTreeList))
	{
		FUNC2(LOG, (FUNC4("statement: %s", FUNC0(ddlCommand)),
					  FUNC3(true)));
	}

	parseTreeCount = FUNC6(parseTreeList);
	if (parseTreeCount != 1)
	{
		FUNC2(ERROR, (FUNC4("cannot execute multiple utility events")));
	}

	/*
	 * xact.c rejects certain commands that are unsafe to run inside transaction
	 * blocks. Since we only apply commands that relate to creating tables and
	 * those commands are safe, we can safely set the ProcessUtilityContext to
	 * PROCESS_UTILITY_TOPLEVEL.
	 */
	parseTreeNode = (Node *) FUNC5(parseTreeList);

	return parseTreeNode;
}