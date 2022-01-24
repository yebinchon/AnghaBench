#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32 ;
struct TYPE_5__ {int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ MultiConnection ;
typedef  scalar_t__ ExecStatusType ;
typedef  scalar_t__ ConnStatusType ;
typedef  int /*<<< orphan*/  BatchQueryStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLIENT_BATCH_QUERY_CONTINUE ; 
 int /*<<< orphan*/  CLIENT_BATCH_QUERY_DONE ; 
 int /*<<< orphan*/  CLIENT_BATCH_QUERY_FAILED ; 
 int /*<<< orphan*/  CLIENT_INVALID_BATCH_QUERY ; 
 scalar_t__ CONNECTION_BAD ; 
 scalar_t__ CONNECTION_OK ; 
 TYPE_1__** ClientConnectionArray ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 size_t INVALID_CONNECTION_ID ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

BatchQueryStatus
FUNC10(int32 connectionId, void **queryResult, int *rowCount,
					   int *columnCount)
{
	MultiConnection *connection = NULL;
	PGresult *result = NULL;
	ConnStatusType connStatusType = CONNECTION_OK;
	ExecStatusType resultStatus = PGRES_COMMAND_OK;
	BatchQueryStatus queryStatus = CLIENT_INVALID_BATCH_QUERY;
	bool raiseInterrupts = true;

	FUNC0(connectionId != INVALID_CONNECTION_ID);
	connection = ClientConnectionArray[connectionId];
	FUNC0(connection != NULL);

	/* set default result */
	(*queryResult) = NULL;
	(*rowCount) = -1;
	(*columnCount) = -1;

	connStatusType = FUNC6(connection->pgConn);
	if (connStatusType == CONNECTION_BAD)
	{
		FUNC8(WARNING, (FUNC9("could not maintain connection to worker node")));
		return CLIENT_BATCH_QUERY_FAILED;
	}

	result = FUNC1(connection, raiseInterrupts);
	if (result == NULL)
	{
		return CLIENT_BATCH_QUERY_DONE;
	}

	resultStatus = FUNC5(result);
	if (resultStatus == PGRES_TUPLES_OK)
	{
		(*queryResult) = (void **) result;
		(*rowCount) = FUNC4(result);
		(*columnCount) = FUNC3(result);
		queryStatus = CLIENT_BATCH_QUERY_CONTINUE;
	}
	else if (resultStatus == PGRES_COMMAND_OK)
	{
		(*queryResult) = (void **) result;
		queryStatus = CLIENT_BATCH_QUERY_CONTINUE;
	}
	else
	{
		FUNC7(connection, result, WARNING);
		FUNC2(result);
		queryStatus = CLIENT_BATCH_QUERY_FAILED;
	}

	return queryStatus;
}