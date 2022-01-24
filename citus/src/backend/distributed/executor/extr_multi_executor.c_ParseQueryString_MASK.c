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
typedef  int /*<<< orphan*/  RawStmt ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

Query *
FUNC6(const char *queryString, Oid *paramOids, int numParams)
{
	Query *query = NULL;
	RawStmt *rawStmt = (RawStmt *) FUNC0(queryString);
	List *queryTreeList =
		FUNC5(rawStmt, queryString, paramOids, numParams, NULL);

	if (FUNC4(queryTreeList) != 1)
	{
		FUNC1(ERROR, (FUNC2("can only execute a single query")));
	}

	query = (Query *) FUNC3(queryTreeList);

	return query;
}