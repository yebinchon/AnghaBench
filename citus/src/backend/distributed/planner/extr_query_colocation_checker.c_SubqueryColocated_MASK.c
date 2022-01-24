#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* subqueryPlannerRestriction; int /*<<< orphan*/ * anchorAttributeEquivalences; int /*<<< orphan*/ * anchorRelationRestrictionList; } ;
struct TYPE_9__ {TYPE_1__* relationRestrictionContext; } ;
struct TYPE_8__ {int /*<<< orphan*/ * relationRestrictionList; } ;
typedef  TYPE_1__ RelationRestrictionContext ;
typedef  int /*<<< orphan*/  Query ;
typedef  TYPE_2__ PlannerRestrictionContext ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ ColocatedJoinChecker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int) ; 

bool
FUNC7(Query *subquery, ColocatedJoinChecker *checker)
{
	List *anchorRelationRestrictionList = checker->anchorRelationRestrictionList;
	List *anchorAttributeEquivalances = checker->anchorAttributeEquivalences;

	PlannerRestrictionContext *restrictionContext = checker->subqueryPlannerRestriction;
	PlannerRestrictionContext *filteredPlannerContext =
		FUNC1(restrictionContext, subquery);
	List *filteredRestrictionList =
		filteredPlannerContext->relationRestrictionContext->relationRestrictionList;

	List *unionedRelationRestrictionList = NULL;
	RelationRestrictionContext *unionedRelationRestrictionContext = NULL;
	PlannerRestrictionContext *unionedPlannerRestrictionContext = NULL;

	/*
	 * There are no relations in the input subquery, such as a subquery
	 * that consist of only intermediate results or without FROM
	 * clause.
	 */
	if (FUNC5(filteredRestrictionList) == 0)
	{
		FUNC0(!FUNC2(subquery));

		return true;
	}

	/*
	 * We merge the relation restrictions of the input subquery and the anchor
	 * restrictions to form a temporary relation restriction context. The aim of
	 * forming this temporary context is to check whether the context contains
	 * distribution key equality or not.
	 */
	unionedRelationRestrictionList =
		FUNC4(anchorRelationRestrictionList,
									  filteredRestrictionList);

	/*
	 * We already have the attributeEquivalances, thus, only need to prepare
	 * the planner restrictions with unioned relations for our purpose of
	 * distribution key equality. Note that we don't need to calculate the
	 * join restrictions, we're already relying on the attributeEquivalances
	 * provided by the context.
	 */
	unionedRelationRestrictionContext = FUNC6(sizeof(RelationRestrictionContext));
	unionedRelationRestrictionContext->relationRestrictionList =
		unionedRelationRestrictionList;

	unionedPlannerRestrictionContext = FUNC6(sizeof(PlannerRestrictionContext));
	unionedPlannerRestrictionContext->relationRestrictionContext =
		unionedRelationRestrictionContext;

	if (!FUNC3(
			unionedPlannerRestrictionContext,
			anchorAttributeEquivalances))
	{
		return false;
	}

	return true;
}