#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * taskPlacementList; } ;
typedef  TYPE_1__ Task ;
struct TYPE_10__ {scalar_t__ format; int indent; int /*<<< orphan*/  str; } ;
typedef  int /*<<< orphan*/  ShardPlacement ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ ExplainState ;

/* Variables and functions */
 scalar_t__ EXPLAIN_FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(Task *task, int placementIndex, List *explainOutputList, ExplainState *es)
{
	FUNC1("Task", NULL, true, es);

	if (es->format == EXPLAIN_FORMAT_TEXT)
	{
		FUNC5(es->str, es->indent * 2);
		FUNC4(es->str, "->  Task\n");
		es->indent += 3;
	}

	if (explainOutputList != NIL)
	{
		List *taskPlacementList = task->taskPlacementList;
		ShardPlacement *taskPlacement = FUNC6(taskPlacementList, placementIndex);

		FUNC3(taskPlacement, explainOutputList, es);
	}
	else
	{
		FUNC2("Error", "Could not get remote plan.", es);
	}

	FUNC0("Task", NULL, true, es);

	if (es->format == EXPLAIN_FORMAT_TEXT)
	{
		es->indent -= 3;
	}
}