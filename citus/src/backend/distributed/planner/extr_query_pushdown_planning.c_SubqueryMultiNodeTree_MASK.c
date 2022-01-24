#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ rtekind; int /*<<< orphan*/ * subquery; } ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  PlannerRestrictionContext ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DeferredErrorMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ RTE_SUBQUERY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

MultiNode *
FUNC11(Query *originalQuery, Query *queryTree,
					  PlannerRestrictionContext *plannerRestrictionContext)
{
	MultiNode *multiQueryNode = NULL;
	DeferredErrorMessage *subqueryPushdownError = NULL;
	DeferredErrorMessage *unsupportedQueryError = NULL;

	/*
	 * This is a generic error check that applies to both subquery pushdown
	 * and single table repartition subquery.
	 */
	unsupportedQueryError = FUNC1(originalQuery);
	if (unsupportedQueryError != NULL)
	{
		FUNC5(unsupportedQueryError, ERROR);
	}

	/*
	 * In principle, we're first trying subquery pushdown planner. If it fails
	 * to create a logical plan, continue with trying the single table
	 * repartition subquery planning.
	 */
	subqueryPushdownError = FUNC2(originalQuery,
																	plannerRestrictionContext);
	if (!subqueryPushdownError)
	{
		multiQueryNode = FUNC9(originalQuery);
	}
	else if (subqueryPushdownError)
	{
		bool singleRelationRepartitionSubquery = false;
		RangeTblEntry *subqueryRangeTableEntry = NULL;
		Query *subqueryTree = NULL;
		DeferredErrorMessage *repartitionQueryError = NULL;
		List *subqueryEntryList = NULL;

		/*
		 * If not eligible for single relation repartition query, we should raise
		 * subquery pushdown error.
		 */
		singleRelationRepartitionSubquery =
			FUNC7(originalQuery);
		if (!singleRelationRepartitionSubquery)
		{
			FUNC6(subqueryPushdownError, ERROR);
		}

		subqueryEntryList = FUNC8(queryTree);
		subqueryRangeTableEntry = (RangeTblEntry *) FUNC10(subqueryEntryList);
		FUNC0(subqueryRangeTableEntry->rtekind == RTE_SUBQUERY);

		subqueryTree = subqueryRangeTableEntry->subquery;

		repartitionQueryError = FUNC3(subqueryTree);
		if (repartitionQueryError)
		{
			FUNC6(repartitionQueryError, ERROR);
		}

		/* all checks has passed, safe to create the multi plan */
		multiQueryNode = FUNC4(queryTree);
	}

	FUNC0(multiQueryNode != NULL);

	return multiQueryNode;
}