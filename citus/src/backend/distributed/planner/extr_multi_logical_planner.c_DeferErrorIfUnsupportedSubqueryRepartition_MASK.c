#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rtable; scalar_t__ jointree; scalar_t__ hasSubLinks; int /*<<< orphan*/ * limitOffset; int /*<<< orphan*/ * limitCount; int /*<<< orphan*/ * sortClause; int /*<<< orphan*/ * groupClause; int /*<<< orphan*/  hasAggs; } ;
struct TYPE_5__ {scalar_t__ rtekind; TYPE_2__* subquery; } ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DeferredErrorMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ RTE_RELATION ; 
 scalar_t__ RTE_SUBQUERY ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ) ; 

DeferredErrorMessage *
FUNC6(Query *subqueryTree)
{
	char *errorDetail = NULL;
	bool preconditionsSatisfied = true;
	List *joinTreeTableIndexList = NIL;
	int rangeTableIndex = 0;
	RangeTblEntry *rangeTableEntry = NULL;
	Query *innerSubquery = NULL;

	if (!subqueryTree->hasAggs)
	{
		preconditionsSatisfied = false;
		errorDetail = "Subqueries without aggregates are not supported yet";
	}

	if (subqueryTree->groupClause == NIL)
	{
		preconditionsSatisfied = false;
		errorDetail = "Subqueries without group by clause are not supported yet";
	}

	if (subqueryTree->sortClause != NULL)
	{
		preconditionsSatisfied = false;
		errorDetail = "Subqueries with order by clause are not supported yet";
	}

	if (subqueryTree->limitCount != NULL)
	{
		preconditionsSatisfied = false;
		errorDetail = "Subqueries with limit are not supported yet";
	}

	if (subqueryTree->limitOffset != NULL)
	{
		preconditionsSatisfied = false;
		errorDetail = "Subqueries with offset are not supported yet";
	}

	if (subqueryTree->hasSubLinks)
	{
		preconditionsSatisfied = false;
		errorDetail = "Subqueries other than from-clause subqueries are unsupported";
	}

	/* finally check and return error if conditions are not satisfied */
	if (!preconditionsSatisfied)
	{
		return FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED,
							 "cannot perform distributed planning on this query",
							 errorDetail, NULL);
	}

	/*
	 * Extract all range table indexes from the join tree. Note that sub-queries
	 * that get pulled up by PostgreSQL don't appear in this join tree.
	 */
	FUNC2((Node *) subqueryTree->jointree,
								 &joinTreeTableIndexList);
	FUNC0(FUNC4(joinTreeTableIndexList) == 1);

	/* continue with the inner subquery */
	rangeTableIndex = FUNC3(joinTreeTableIndexList);
	rangeTableEntry = FUNC5(rangeTableIndex, subqueryTree->rtable);
	if (rangeTableEntry->rtekind == RTE_RELATION)
	{
		return NULL;
	}

	FUNC0(rangeTableEntry->rtekind == RTE_SUBQUERY);
	innerSubquery = rangeTableEntry->subquery;

	/* recursively continue to the inner subqueries */
	return FUNC6(innerSubquery);
}