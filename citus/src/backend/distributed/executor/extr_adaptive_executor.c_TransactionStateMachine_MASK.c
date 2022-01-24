#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_3__* currentTask; TYPE_6__* connection; TYPE_2__* workerPool; } ;
typedef  TYPE_1__ WorkerSession ;
struct TYPE_22__ {int /*<<< orphan*/  idleConnectionCount; TYPE_7__* distributedExecution; } ;
typedef  TYPE_2__ WorkerPool ;
struct TYPE_23__ {TYPE_4__* shardCommandExecution; } ;
typedef  TYPE_3__ TaskPlacementExecution ;
struct TYPE_27__ {int /*<<< orphan*/  isTransaction; } ;
struct TYPE_25__ {int transactionState; } ;
struct TYPE_26__ {int /*<<< orphan*/  connectionState; int /*<<< orphan*/  pgConn; TYPE_5__ remoteTransaction; } ;
struct TYPE_24__ {int expectResults; int gotResults; } ;
typedef  TYPE_4__ ShardCommandExecution ;
typedef  int RemoteTransactionState ;
typedef  TYPE_5__ RemoteTransaction ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_6__ MultiConnection ;
typedef  TYPE_7__ DistributedExecution ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MULTI_CONNECTION_LOST ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC8 (TYPE_1__*) ; 
#define  REMOTE_TRANS_CLEARING_RESULTS 132 
#define  REMOTE_TRANS_INVALID 131 
#define  REMOTE_TRANS_SENT_BEGIN 130 
#define  REMOTE_TRANS_SENT_COMMAND 129 
#define  REMOTE_TRANS_STARTED 128 
 int FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int WL_SOCKET_READABLE ; 
 int WL_SOCKET_WRITEABLE ; 

__attribute__((used)) static void
FUNC14(WorkerSession *session)
{
	WorkerPool *workerPool = session->workerPool;
	DistributedExecution *execution = workerPool->distributedExecution;

	MultiConnection *connection = session->connection;
	RemoteTransaction *transaction = &(connection->remoteTransaction);
	RemoteTransactionState currentState;

	do {
		currentState = transaction->transactionState;

		if (!FUNC2(session))
		{
			/* connection is busy, no state transitions to make */
			break;
		}

		switch (currentState)
		{
			case REMOTE_TRANS_INVALID:
			{
				if (execution->isTransaction)
				{
					/* if we're expanding the nodes in a transaction, use 2PC */
					FUNC0(session);

					/* need to open a transaction block first */
					FUNC12(connection);

					transaction->transactionState = REMOTE_TRANS_CLEARING_RESULTS;
				}
				else
				{
					TaskPlacementExecution *placementExecution = NULL;
					bool placementExecutionStarted = false;

					placementExecution = FUNC8(session);
					if (placementExecution == NULL)
					{
						/*
						 * No tasks are ready to be executed at the moment. But we
						 * still mark the socket readable to get any notices if exists.
						 */
						FUNC13(session, WL_SOCKET_READABLE);

						break;
					}

					placementExecutionStarted =
						FUNC11(placementExecution, session);
					if (!placementExecutionStarted)
					{
						/* no need to continue, connection is lost */
						FUNC1(session->connection->connectionState ==
							   MULTI_CONNECTION_LOST);

						return;
					}

					transaction->transactionState = REMOTE_TRANS_SENT_COMMAND;
				}

				FUNC13(session,
										  WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);
				break;
			}

			case REMOTE_TRANS_SENT_BEGIN:
			case REMOTE_TRANS_CLEARING_RESULTS:
			{
				PGresult *result = NULL;

				result = FUNC6(connection->pgConn);
				if (result != NULL)
				{
					if (!FUNC3(result))
					{
						/* query failures are always hard errors */
						FUNC10(connection, result, ERROR);
					}

					FUNC5(result);

					/* wake up WaitEventSetWait */
					FUNC13(session,
											  WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);

					break;
				}

				if (session->currentTask != NULL)
				{
					TaskPlacementExecution *placementExecution = session->currentTask;
					bool succeeded = true;

					/*
					 * Once we finished a task on a connection, we no longer
					 * allow that connection to fail.
					 */
					FUNC4(connection);

					session->currentTask = NULL;

					FUNC7(placementExecution, succeeded);

					/* connection is ready to use for executing commands */
					workerPool->idleConnectionCount++;
				}

				/* connection needs to be writeable to send next command */
				FUNC13(session,
										  WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);

				if (execution->isTransaction)
				{
					transaction->transactionState = REMOTE_TRANS_STARTED;
				}
				else
				{
					transaction->transactionState = REMOTE_TRANS_INVALID;
				}
				break;
			}

			case REMOTE_TRANS_STARTED:
			{
				TaskPlacementExecution *placementExecution = NULL;
				bool placementExecutionStarted = false;

				placementExecution = FUNC8(session);
				if (placementExecution == NULL)
				{
					/* no tasks are ready to be executed at the moment */
					FUNC13(session, WL_SOCKET_READABLE);
					break;
				}

				placementExecutionStarted =
					FUNC11(placementExecution, session);
				if (!placementExecutionStarted)
				{
					/* no need to continue, connection is lost */
					FUNC1(session->connection->connectionState == MULTI_CONNECTION_LOST);

					return;
				}

				transaction->transactionState = REMOTE_TRANS_SENT_COMMAND;
				break;
			}

			case REMOTE_TRANS_SENT_COMMAND:
			{
				bool fetchDone = false;
				TaskPlacementExecution *placementExecution = session->currentTask;
				ShardCommandExecution *shardCommandExecution =
					placementExecution->shardCommandExecution;
				bool storeRows = shardCommandExecution->expectResults;

				if (shardCommandExecution->gotResults)
				{
					/* already received results from another replica */
					storeRows = false;
				}

				fetchDone = FUNC9(session, storeRows);
				if (!fetchDone)
				{
					break;
				}

				shardCommandExecution->gotResults = true;
				transaction->transactionState = REMOTE_TRANS_CLEARING_RESULTS;
				break;
			}

			default:
			{
				break;
			}
		}
	}
	/* iterate in case we can perform multiple transitions at once */
	while (transaction->transactionState != currentState);
}