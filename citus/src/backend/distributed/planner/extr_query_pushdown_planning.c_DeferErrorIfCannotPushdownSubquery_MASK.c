#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ detail; } ;
struct TYPE_18__ {int /*<<< orphan*/ * targetList; int /*<<< orphan*/ * distinctClause; int /*<<< orphan*/ * groupClause; scalar_t__ havingQual; scalar_t__ hasAggs; scalar_t__ hasWindowFuncs; scalar_t__ groupingSets; scalar_t__ hasForUpdate; scalar_t__ cteList; scalar_t__ hasRecursive; scalar_t__ setOperations; scalar_t__ limitCount; scalar_t__ limitOffset; } ;
struct TYPE_17__ {scalar_t__ data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ DeferredErrorMessage ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__**) ; 
 scalar_t__ SubqueryPushdown ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

DeferredErrorMessage *
FUNC9(Query *subqueryTree, bool outerMostQueryHasLimit)
{
	bool preconditionsSatisfied = true;
	char *errorDetail = NULL;
	StringInfo errorInfo = NULL;
	DeferredErrorMessage *deferredError = NULL;

	deferredError = FUNC1(subqueryTree);
	if (deferredError)
	{
		return deferredError;
	}

	if (FUNC5(subqueryTree) &&
		FUNC8((Node *) subqueryTree->targetList))
	{
		preconditionsSatisfied = false;
		errorDetail = "Subqueries without a FROM clause can only contain immutable "
					  "functions";
	}

	if (subqueryTree->limitOffset)
	{
		preconditionsSatisfied = false;
		errorDetail = "Offset clause is currently unsupported when a subquery "
					  "references a column from another query";
	}

	/* limit is not supported when SubqueryPushdown is not set */
	if (subqueryTree->limitCount && !SubqueryPushdown)
	{
		preconditionsSatisfied = false;
		errorDetail = "Limit in subquery is currently unsupported when a "
					  "subquery references a column from another query";
	}

	/*
	 * Limit is partially supported when SubqueryPushdown is set.
	 * The outermost query must have a limit clause.
	 */
	if (subqueryTree->limitCount && SubqueryPushdown && !outerMostQueryHasLimit)
	{
		preconditionsSatisfied = false;
		errorDetail = "Limit in subquery without limit in the outermost query is "
					  "unsupported";
	}

	if (subqueryTree->setOperations)
	{
		deferredError = FUNC2(subqueryTree);
		if (deferredError)
		{
			return deferredError;
		}
	}

	if (subqueryTree->hasRecursive)
	{
		preconditionsSatisfied = false;
		errorDetail = "Recursive queries are currently unsupported";
	}

	if (subqueryTree->cteList)
	{
		preconditionsSatisfied = false;
		errorDetail = "Common Table Expressions are currently unsupported";
	}

	if (subqueryTree->hasForUpdate)
	{
		preconditionsSatisfied = false;
		errorDetail = "For Update/Share commands are currently unsupported";
	}

	/* group clause list must include partition column */
	if (subqueryTree->groupClause)
	{
		List *groupClauseList = subqueryTree->groupClause;
		List *targetEntryList = subqueryTree->targetList;
		List *groupTargetEntryList = FUNC4(groupClauseList,
														  targetEntryList);
		bool groupOnPartitionColumn = FUNC7(subqueryTree,
																  groupTargetEntryList);
		if (!groupOnPartitionColumn)
		{
			preconditionsSatisfied = false;
			errorDetail = "Group by list without partition column is currently "
						  "unsupported when a subquery references a column "
						  "from another query";
		}
	}

	/* grouping sets are not allowed in subqueries*/
	if (subqueryTree->groupingSets)
	{
		preconditionsSatisfied = false;
		errorDetail = "could not run distributed query with GROUPING SETS, CUBE, "
					  "or ROLLUP";
	}

	/*
	 * We support window functions when the window function
	 * is partitioned on distribution column.
	 */
	if (subqueryTree->hasWindowFuncs && !FUNC6(subqueryTree,
																	  &errorInfo))
	{
		errorDetail = (char *) errorInfo->data;
		preconditionsSatisfied = false;
	}

	/* we don't support aggregates without group by */
	if (subqueryTree->hasAggs && (subqueryTree->groupClause == NULL))
	{
		preconditionsSatisfied = false;
		errorDetail = "Aggregates without group by are currently unsupported "
					  "when a subquery references a column from another query";
	}

	/* having clause without group by on partition column is not supported */
	if (subqueryTree->havingQual && (subqueryTree->groupClause == NULL))
	{
		preconditionsSatisfied = false;
		errorDetail = "Having qual without group by on partition column is "
					  "currently unsupported when a subquery references "
					  "a column from another query";
	}

	/* distinct clause list must include partition column */
	if (subqueryTree->distinctClause)
	{
		List *distinctClauseList = subqueryTree->distinctClause;
		List *targetEntryList = subqueryTree->targetList;
		List *distinctTargetEntryList = FUNC4(distinctClauseList,
															 targetEntryList);
		bool distinctOnPartitionColumn =
			FUNC7(subqueryTree, distinctTargetEntryList);
		if (!distinctOnPartitionColumn)
		{
			preconditionsSatisfied = false;
			errorDetail = "Distinct on columns without partition column is "
						  "currently unsupported";
		}
	}

	deferredError = FUNC0(subqueryTree);
	if (deferredError)
	{
		preconditionsSatisfied = false;
		errorDetail = (char *) deferredError->detail;
	}


	/* finally check and return deferred if not satisfied */
	if (!preconditionsSatisfied)
	{
		return FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED,
							 "cannot push down this subquery",
							 errorDetail, NULL);
	}

	return NULL;
}