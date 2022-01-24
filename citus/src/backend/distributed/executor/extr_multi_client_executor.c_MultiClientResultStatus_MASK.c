#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32 ;
struct TYPE_3__ {int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  ResultStatus ;
typedef  TYPE_1__ MultiConnection ;
typedef  scalar_t__ ConnStatusType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLIENT_INVALID_RESULT_STATUS ; 
 int /*<<< orphan*/  CLIENT_RESULT_BUSY ; 
 int /*<<< orphan*/  CLIENT_RESULT_READY ; 
 int /*<<< orphan*/  CLIENT_RESULT_UNAVAILABLE ; 
 scalar_t__ CONNECTION_BAD ; 
 scalar_t__ CONNECTION_OK ; 
 TYPE_1__** ClientConnectionArray ; 
 size_t INVALID_CONNECTION_ID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

ResultStatus
FUNC6(int32 connectionId)
{
	MultiConnection *connection = NULL;
	int consumed = 0;
	ConnStatusType connStatusType = CONNECTION_OK;
	ResultStatus resultStatus = CLIENT_INVALID_RESULT_STATUS;

	FUNC0(connectionId != INVALID_CONNECTION_ID);
	connection = ClientConnectionArray[connectionId];
	FUNC0(connection != NULL);

	connStatusType = FUNC3(connection->pgConn);
	if (connStatusType == CONNECTION_BAD)
	{
		FUNC4(WARNING, (FUNC5("could not maintain connection to worker node")));
		return CLIENT_RESULT_UNAVAILABLE;
	}

	/* consume input to allow status change */
	consumed = FUNC1(connection->pgConn);
	if (consumed != 0)
	{
		int connectionBusy = FUNC2(connection->pgConn);
		if (connectionBusy == 0)
		{
			resultStatus = CLIENT_RESULT_READY;
		}
		else
		{
			resultStatus = CLIENT_RESULT_BUSY;
		}
	}
	else
	{
		FUNC4(WARNING, (FUNC5("could not consume data from worker node")));
		resultStatus = CLIENT_RESULT_UNAVAILABLE;
	}

	return resultStatus;
}