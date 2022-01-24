#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_14__ {int /*<<< orphan*/  pgConn; } ;
struct TYPE_13__ {scalar_t__ partitionMethod; } ;
typedef  int /*<<< orphan*/  ShardPlacementAccess ;
typedef  TYPE_1__ ShardPlacement ;
typedef  TYPE_2__ MultiConnection ;

/* Variables and functions */
 scalar_t__ CONNECTION_OK ; 
 int /*<<< orphan*/  CONNECTION_PER_PLACEMENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 scalar_t__ DISTRIBUTE_BY_HASH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOR_DML ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ MultiShardConnectionType ; 
 int /*<<< orphan*/  PLACEMENT_ACCESS_DML ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ SEQUENTIAL_CONNECTION ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static MultiConnection *
FUNC10(ShardPlacement *placement, bool stopOnFailure)
{
	MultiConnection *connection = NULL;
	uint32 connectionFlags = FOR_DML;
	char *nodeUser = FUNC2();
	ShardPlacementAccess *placementAccess = NULL;

	/*
	 * Determine whether the task has to be assigned to a particular connection
	 * due to a preceding access to the placement in the same transaction.
	 */
	placementAccess = FUNC1(placement, PLACEMENT_ACCESS_DML);
	connection = FUNC3(connectionFlags,
														FUNC9(placementAccess),
														NULL);
	if (connection != NULL)
	{
		return connection;
	}

	/*
	 * For placements that haven't been assigned a connection by a previous command
	 * in the current transaction, we use a separate connection per placement for
	 * hash-distributed tables in order to get the maximum performance.
	 */
	if (placement->partitionMethod == DISTRIBUTE_BY_HASH &&
		MultiShardConnectionType != SEQUENTIAL_CONNECTION)
	{
		connectionFlags |= CONNECTION_PER_PLACEMENT;
	}

	connection = FUNC4(connectionFlags, placement, nodeUser);

	if (FUNC7(connection->pgConn) != CONNECTION_OK)
	{
		if (stopOnFailure)
		{
			FUNC8(connection, ERROR);
		}
		else
		{
			const bool raiseErrors = true;

			FUNC5(connection, raiseErrors);

			return NULL;
		}
	}

	/*
	 * Errors are supposed to cause immediate aborts (i.e. we don't
	 * want to/can't invalidate placements), mark the connection as
	 * critical so later errors cause failures.
	 */
	FUNC6(connection);

	if (MultiShardConnectionType != SEQUENTIAL_CONNECTION)
	{
		FUNC0(connection);
	}

	return connection;
}