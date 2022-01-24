#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  size_t int32 ;
struct TYPE_6__ {int /*<<< orphan*/  pgConn; } ;
typedef  TYPE_1__ MultiConnection ;
typedef  scalar_t__ ConnStatusType ;

/* Variables and functions */
 size_t FUNC0 () ; 
 scalar_t__ CONNECTION_OK ; 
 TYPE_1__** ClientConnectionArray ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 int FORCE_NEW_CONNECTION ; 
 TYPE_1__* FUNC2 (int,char const*,int /*<<< orphan*/ ,char const*,char const*) ; 
 size_t INVALID_CONNECTION_ID ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ XACT_MODIFICATION_NONE ; 
 scalar_t__ XactModificationLevel ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int32
FUNC8(const char *nodeName, uint32 nodePort, const char *nodeDatabase,
				   const char *userName)
{
	MultiConnection *connection = NULL;
	ConnStatusType connStatusType = CONNECTION_OK;
	int32 connectionId = FUNC0();
	int connectionFlags = FORCE_NEW_CONNECTION; /* no cached connections for now */

	if (connectionId == INVALID_CONNECTION_ID)
	{
		FUNC5(WARNING, (FUNC7("could not allocate connection in connection pool")));
		return connectionId;
	}

	if (XactModificationLevel > XACT_MODIFICATION_NONE)
	{
		FUNC5(ERROR, (FUNC6(ERRCODE_ACTIVE_SQL_TRANSACTION),
						FUNC7("cannot open new connections after the first modification "
							   "command within a transaction")));
	}

	/* establish synchronous connection to worker node */
	connection = FUNC2(connectionFlags, nodeName, nodePort,
											   userName, nodeDatabase);

	connStatusType = FUNC3(connection->pgConn);

	if (connStatusType == CONNECTION_OK)
	{
		ClientConnectionArray[connectionId] = connection;
	}
	else
	{
		FUNC4(connection, WARNING);
		FUNC1(connection);
		connectionId = INVALID_CONNECTION_ID;
	}

	return connectionId;
}