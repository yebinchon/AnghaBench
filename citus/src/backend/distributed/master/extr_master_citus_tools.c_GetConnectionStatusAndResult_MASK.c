#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ MultiConnection ;
typedef  scalar_t__ ConnStatusType ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(MultiConnection *connection, bool *resultStatus,
							 StringInfo queryResultString)
{
	bool finished = true;
	ConnStatusType connectionStatus = FUNC5(connection->pgConn);
	int consumeInput = 0;
	PGresult *queryResult = NULL;
	bool success = false;

	*resultStatus = false;
	FUNC7(queryResultString);

	if (connectionStatus == CONNECTION_BAD)
	{
		FUNC6(queryResultString, "connection lost");
		return finished;
	}

	consumeInput = FUNC2(connection->pgConn);
	if (consumeInput == 0)
	{
		FUNC6(queryResultString, "query result unavailable");
		return finished;
	}

	/* check later if busy */
	if (FUNC4(connection->pgConn) != 0)
	{
		finished = false;
		return finished;
	}

	/* query result is available at this point */
	queryResult = FUNC3(connection->pgConn);
	success = FUNC0(connection, queryResult, queryResultString);
	FUNC1(queryResult);

	*resultStatus = success;
	finished = true;
	return true;
}