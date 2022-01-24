#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_7__ {int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 scalar_t__ CONNECTION_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FORCE_NEW_CONNECTION ; 
 TYPE_1__* FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static bool
FUNC8(char *nodeName, uint32 nodePort, char *queryString,
							StringInfo queryResultString)
{
	int connectionFlags = FORCE_NEW_CONNECTION;
	MultiConnection *connection =
		FUNC2(connectionFlags, nodeName, nodePort);
	bool success = false;
	PGresult *queryResult = NULL;
	bool raiseInterrupts = true;

	if (FUNC5(connection->pgConn) != CONNECTION_OK)
	{
		FUNC7(queryResultString, "failed to connect to %s:%d", nodeName,
						 (int) nodePort);
		return false;
	}

	FUNC6(connection, queryString);
	queryResult = FUNC3(connection, raiseInterrupts);
	success = FUNC1(connection, queryResult, queryResultString);

	FUNC4(queryResult);

	/* close the connection */
	FUNC0(connection);

	return success;
}