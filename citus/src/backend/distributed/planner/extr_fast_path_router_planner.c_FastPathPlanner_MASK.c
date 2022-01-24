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
struct TYPE_7__ {TYPE_1__* jointree; int /*<<< orphan*/ * targetList; } ;
struct TYPE_6__ {int /*<<< orphan*/ * quals; } ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PlannedStmt *
FUNC4(Query *originalQuery, Query *parse, ParamListInfo boundParams)
{
	PlannedStmt *result = NULL;

	/*
	 * To support prepared statements for fast-path queries, we resolve the
	 * external parameters at this point. Note that this is normally done by
	 * eval_const_expr() in standard planner when the boundParams are avaliable.
	 * If not avaliable, as does for all other types of queries, Citus goes
	 * through the logic of increasing the cost of the plan and forcing
	 * PostgreSQL to pick custom plans.
	 *
	 * We're also only interested in resolving the quals since we'd want to
	 * do shard pruning based on the filter on the distribution column.
	 */
	originalQuery->jointree->quals =
		FUNC1((Node *) originalQuery->jointree->quals,
							  FUNC2(boundParams));

	/*
	 * Citus planner relies on some of the transformations on constant
	 * evaluation on the parse tree.
	 */
	parse->targetList =
		(List *) FUNC3(NULL, (Node *) parse->targetList);
	parse->jointree->quals =
		(Node *) FUNC3(NULL, (Node *) parse->jointree->quals);


	result = FUNC0(originalQuery);

	return result;
}