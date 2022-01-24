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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  MultiConnection ;
typedef  scalar_t__ ExecStatusType ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bool
FUNC8(MultiConnection *connection, PGresult *queryResult,
					StringInfo queryResultString)
{
	bool success = false;

	ExecStatusType resultStatus = FUNC5(queryResult);
	if (resultStatus == PGRES_COMMAND_OK)
	{
		char *commandStatus = FUNC0(queryResult);
		FUNC7(queryResultString, "%s", commandStatus);
		success = true;
	}
	else if (resultStatus == PGRES_TUPLES_OK)
	{
		int ntuples = FUNC4(queryResult);
		int nfields = FUNC3(queryResult);

		/* error if query returns more than 1 rows, or more than 1 fields */
		if (nfields != 1)
		{
			FUNC7(queryResultString,
							 "expected a single column in query target");
		}
		else if (ntuples > 1)
		{
			FUNC7(queryResultString,
							 "expected a single row in query result");
		}
		else
		{
			int row = 0;
			int column = 0;
			if (!FUNC1(queryResult, row, column))
			{
				char *queryResultValue = FUNC2(queryResult, row, column);
				FUNC7(queryResultString, "%s", queryResultValue);
			}
			success = true;
		}
	}
	else
	{
		FUNC6(connection, queryResultString);
	}

	return success;
}