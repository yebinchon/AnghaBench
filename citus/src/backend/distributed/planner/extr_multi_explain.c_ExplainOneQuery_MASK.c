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
typedef  int /*<<< orphan*/  instr_time ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  IntoClause ;
typedef  int /*<<< orphan*/  ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(Query *query, int cursorOptions,
				IntoClause *into, ExplainState *es,
				const char *queryString, ParamListInfo params,
				QueryEnvironment *queryEnv)
{
	/* if an advisor plugin is present, let it manage things */
	if (&ExplainOneQuery_hook)
	{
		FUNC1) (query, cursorOptions, into, es,
								 queryString, params, queryEnv);
	}
	else
	{
		PlannedStmt *plan;
		instr_time	planstart,
					planduration;

		FUNC2(planstart);

		/* plan the query */
		plan = FUNC4(query, cursorOptions, params);

		FUNC2(planduration);
		FUNC3(planduration, planstart);

		/* run it (if needed) and produce output */
		FUNC0(plan, into, es, queryString, params, queryEnv,
					   &planduration);
	}
}