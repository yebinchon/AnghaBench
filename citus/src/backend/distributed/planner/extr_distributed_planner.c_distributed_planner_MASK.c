#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_11__ {TYPE_1__* planTree; } ;
struct TYPE_10__ {int total_cost; } ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  PlannerRestrictionContext ;
typedef  TYPE_2__ PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DistributedPlan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int CURSOR_OPT_FORCE_DISTRIBUTED ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FLT_MAX ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NextPlanId ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 TYPE_2__* FUNC27 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

PlannedStmt *
FUNC28(Query *parse, int cursorOptions, ParamListInfo boundParams)
{
	PlannedStmt *result = NULL;
	bool needsDistributedPlanning = false;
	Query *originalQuery = NULL;
	PlannerRestrictionContext *plannerRestrictionContext = NULL;
	bool setPartitionedTablesInherited = false;
	List *rangeTableList = FUNC6(parse);

	if (cursorOptions & CURSOR_OPT_FORCE_DISTRIBUTED)
	{
		/* this cursor flag could only be set when Citus has been loaded */
		FUNC1(FUNC3());

		needsDistributedPlanning = true;
	}
	else if (FUNC3())
	{
		if (FUNC11(parse, rangeTableList))
		{
			/*
			 * For joins between reference tables and local tables, we replace
			 * reference table names with shard tables names in the query, so
			 * we can use the standard_planner for planning it locally.
			 */
			needsDistributedPlanning = false;
			FUNC21((Node *) parse, NULL);
		}
		else
		{
			needsDistributedPlanning = FUNC12(rangeTableList);
		}
	}

	if (needsDistributedPlanning)
	{
		/*
		 * Inserting into a local table needs to go through the regular postgres
		 * planner/executor, but the SELECT needs to go through Citus. We currently
		 * don't have a way of doing both things and therefore error out, but do
		 * have a handy tip for users.
		 */
		if (FUNC10(parse))
		{
			FUNC23(ERROR, (FUNC26("cannot INSERT rows from a distributed query into a "
								   "local table"),
							FUNC25("Consider using CREATE TEMPORARY TABLE tmp AS "
									"SELECT ... and inserting from the temporary "
									"table.")));
		}

		/*
		 * standard_planner scribbles on it's input, but for deparsing we need the
		 * unmodified form. Note that we keep RTE_RELATIONs with their identities
		 * set, which doesn't break our goals, but, prevents us keeping an extra copy
		 * of the query tree. Note that we copy the query tree once we're sure it's a
		 * distributed query.
		 */
		FUNC2(rangeTableList);
		originalQuery = FUNC22(parse);

		setPartitionedTablesInherited = false;
		FUNC0(rangeTableList,
												 setPartitionedTablesInherited);
	}

	/*
	 * Make sure that we hide shard names on the Citus MX worker nodes. See comments in
	 * ReplaceTableVisibleFunction() for the details.
	 */
	FUNC19((Node *) parse);

	/* create a restriction context and put it at the end if context list */
	plannerRestrictionContext = FUNC4();

	FUNC17();
	{
		/*
		 * For trivial queries, we're skipping the standard_planner() in
		 * order to eliminate its overhead.
		 *
		 * Otherwise, call into standard planner. This is required because the Citus
		 * planner relies on both the restriction information per table and parse tree
		 * transformations made by postgres' planner.
		 */

		if (needsDistributedPlanning && FUNC8(originalQuery))
		{
			result = FUNC7(originalQuery, parse, boundParams);
		}
		else
		{
			result = FUNC27(parse, cursorOptions, boundParams);
		}

		if (needsDistributedPlanning)
		{
			uint64 planId = NextPlanId++;

			result = FUNC5(planId, result, originalQuery, parse,
												  boundParams, plannerRestrictionContext);

			setPartitionedTablesInherited = true;
			FUNC0(rangeTableList,
													 setPartitionedTablesInherited);
		}
		else
		{
			bool hasExternParam = false;
			DistributedPlan *delegatePlan = FUNC20(parse,
																	  &hasExternParam);
			if (delegatePlan != NULL)
			{
				result = FUNC9(result, delegatePlan);
			}
			else if (hasExternParam)
			{
				/*
				 * As in CreateDistributedPlannedStmt, try dissuade planner when planning
				 * potentially failed due to unresolved prepared statement parameters.
				 */
				result->planTree->total_cost = FLT_MAX / 100000000;
			}
		}
	}
	FUNC14();
	{
		FUNC18();
		FUNC16();
	}
	FUNC15();

	/* remove the context from the context list */
	FUNC18();

	/*
	 * In some cases, for example; parameterized SQL functions, we may miss that
	 * there is a need for distributed planning. Such cases only become clear after
	 * standart_planner performs some modifications on parse tree. In such cases
	 * we will simply error out.
	 */
	if (!needsDistributedPlanning && FUNC13(parse))
	{
		FUNC23(ERROR, (FUNC24(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC26("cannot perform distributed planning on this "
							   "query because parameterized queries for SQL "
							   "functions referencing distributed tables are "
							   "not supported"),
						FUNC25("Consider using PL/pgSQL functions instead.")));
	}

	return result;
}