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
 scalar_t__ CONNECTION_BAD ; 
 scalar_t__ CONNECTION_OK ; 
 TYPE_1__** ClientConnectionArray ; 
 int /*<<< orphan*/ * ClientPollingStatusArray ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 int FORCE_NEW_CONNECTION ; 
 size_t INVALID_CONNECTION_ID ; 
 int /*<<< orphan*/  PGRES_POLLING_WRITING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int,char const*,int /*<<< orphan*/ ,char const*,char const*) ; 
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

	/* prepare asynchronous request for worker node connection */
	connection = FUNC4(connectionFlags, nodeName, nodePort,
												 userName, nodeDatabase);
	connStatusType = FUNC2(connection->pgConn);

	/*
	 * If prepared, we save the connection, and set its initial polling status
	 * to PGRES_POLLING_WRITING as specified in "Database Connection Control
	 * Functions" section of the PostgreSQL documentation.
	 */
	if (connStatusType != CONNECTION_BAD)
	{
		ClientConnectionArray[connectionId] = connection;
		ClientPollingStatusArray[connectionId] = PGRES_POLLING_WRITING;
	}
	else
	{
		FUNC3(connection, WARNING);
		FUNC1(connection);

		connectionId = INVALID_CONNECTION_ID;
	}

	return connectionId;
}