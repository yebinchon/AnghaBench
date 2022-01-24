#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  queryString; int /*<<< orphan*/ * taskPlacementList; } ;
typedef  TYPE_1__ Task ;
struct TYPE_16__ {int /*<<< orphan*/  pgConn; } ;
struct TYPE_15__ {int placementIndex; int /*<<< orphan*/  explainOutputList; } ;
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* StringInfo ;
typedef  int /*<<< orphan*/  ShardPlacement ;
typedef  TYPE_3__ RemoteExplainPlan ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ MultiConnection ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ CONNECTION_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static RemoteExplainPlan *
FUNC13(Task *task, ExplainState *es)
{
	StringInfo explainQuery = NULL;
	List *taskPlacementList = task->taskPlacementList;
	int placementCount = FUNC10(taskPlacementList);
	int placementIndex = 0;
	RemoteExplainPlan *remotePlan = NULL;

	remotePlan = (RemoteExplainPlan *) FUNC12(sizeof(RemoteExplainPlan));
	explainQuery = FUNC1(task->queryString, es);

	/*
	 * Use a coordinated transaction to ensure that we open a transaction block
	 * such that we can set a savepoint.
	 */
	FUNC0();

	for (placementIndex = 0; placementIndex < placementCount; placementIndex++)
	{
		ShardPlacement *taskPlacement = FUNC11(taskPlacementList, placementIndex);
		MultiConnection *connection = NULL;
		PGresult *queryResult = NULL;
		int connectionFlags = 0;
		int executeResult = 0;

		remotePlan->placementIndex = placementIndex;

		connection = FUNC5(connectionFlags, taskPlacement, NULL);

		/* try other placements if we fail to connect this one */
		if (FUNC7(connection->pgConn) != CONNECTION_OK)
		{
			continue;
		}

		FUNC9(connection);

		/*
		 * Start a savepoint for the explain query. After running the explain
		 * query, we will rollback to this savepoint. This saves us from side
		 * effects of EXPLAIN ANALYZE on DML queries.
		 */
		FUNC2(connection, "SAVEPOINT citus_explain_savepoint");

		/* run explain query */
		executeResult = FUNC3(connection, explainQuery->data,
													 &queryResult);
		if (executeResult != 0)
		{
			FUNC6(queryResult);
			FUNC4(connection);

			continue;
		}

		/* read explain query results */
		remotePlan->explainOutputList = FUNC8(queryResult);

		FUNC6(queryResult);
		FUNC4(connection);

		/* rollback to the savepoint */
		FUNC2(connection,
									 "ROLLBACK TO SAVEPOINT citus_explain_savepoint");

		if (remotePlan->explainOutputList != NIL)
		{
			break;
		}
	}

	return remotePlan;
}