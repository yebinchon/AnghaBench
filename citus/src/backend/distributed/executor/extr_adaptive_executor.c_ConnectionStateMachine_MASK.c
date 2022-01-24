#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/ * currentTask; int /*<<< orphan*/  sessionId; TYPE_4__* connection; TYPE_3__* workerPool; } ;
typedef  TYPE_2__ WorkerSession ;
struct TYPE_17__ {int failedConnectionCount; int /*<<< orphan*/  sessionList; int /*<<< orphan*/  idleConnectionCount; int /*<<< orphan*/  activeConnectionCount; TYPE_5__* distributedExecution; } ;
typedef  TYPE_3__ WorkerPool ;
struct TYPE_19__ {int connectionSetChanged; int /*<<< orphan*/  errorOnAnyFailure; int /*<<< orphan*/  failed; } ;
struct TYPE_15__ {int /*<<< orphan*/  transactionState; int /*<<< orphan*/  beginSent; } ;
struct TYPE_18__ {int connectionState; TYPE_1__ remoteTransaction; int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  PostgresPollingStatusType ;
typedef  int MultiConnectionState ;
typedef  TYPE_4__ MultiConnection ;
typedef  TYPE_5__ DistributedExecution ;
typedef  int /*<<< orphan*/  ConnStatusType ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_BAD ; 
 int /*<<< orphan*/  CONNECTION_OK ; 
 int /*<<< orphan*/  DEBUG4 ; 
 int /*<<< orphan*/  ERROR ; 
#define  MULTI_CONNECTION_CONNECTED 132 
#define  MULTI_CONNECTION_CONNECTING 131 
#define  MULTI_CONNECTION_FAILED 130 
#define  MULTI_CONNECTION_INITIAL 129 
#define  MULTI_CONNECTION_LOST 128 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  PGRES_POLLING_FAILED ; 
 int /*<<< orphan*/  PGRES_POLLING_READING ; 
 int /*<<< orphan*/  PGRES_POLLING_WRITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REMOTE_TRANS_INVALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  WARNING ; 
 int WL_SOCKET_READABLE ; 
 int WL_SOCKET_WRITEABLE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(WorkerSession *session)
{
	WorkerPool *workerPool = session->workerPool;
	DistributedExecution *execution = workerPool->distributedExecution;

	MultiConnection *connection = session->connection;
	MultiConnectionState currentState;

	do {
		currentState = connection->connectionState;

		switch (currentState)
		{
			case MULTI_CONNECTION_INITIAL:
			{
				/* simply iterate the state machine */
				connection->connectionState = MULTI_CONNECTION_CONNECTING;
				break;
			}

			case MULTI_CONNECTION_CONNECTING:
			{
				PostgresPollingStatusType pollMode;

				ConnStatusType status = FUNC2(connection->pgConn);
				if (status == CONNECTION_OK)
				{
					FUNC10(DEBUG4, (FUNC11("established connection to %s:%d for "
											"session %ld",
											connection->hostname, connection->port,
											session->sessionId)));

					workerPool->activeConnectionCount++;
					workerPool->idleConnectionCount++;

					FUNC7(session,
											  WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);

					connection->connectionState = MULTI_CONNECTION_CONNECTED;
					break;
				}
				else if (status == CONNECTION_BAD)
				{
					connection->connectionState = MULTI_CONNECTION_FAILED;
					break;
				}

				pollMode = FUNC1(connection->pgConn);
				if (pollMode == PGRES_POLLING_FAILED)
				{
					connection->connectionState = MULTI_CONNECTION_FAILED;
				}
				else if (pollMode == PGRES_POLLING_READING)
				{
					FUNC7(session, WL_SOCKET_READABLE);
				}
				else if (pollMode == PGRES_POLLING_WRITING)
				{
					FUNC7(session, WL_SOCKET_WRITEABLE);
				}
				else
				{
					FUNC10(DEBUG4, (FUNC11("established connection to %s:%d for "
											"session %ld",
											connection->hostname, connection->port,
											session->sessionId)));

					workerPool->activeConnectionCount++;
					workerPool->idleConnectionCount++;

					FUNC7(session,
											  WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);

					connection->connectionState = MULTI_CONNECTION_CONNECTED;
				}

				break;
			}

			case MULTI_CONNECTION_CONNECTED:
			{
				/* connection is ready, run the transaction state machine */
				FUNC5(session);
				break;
			}

			case MULTI_CONNECTION_LOST:
			{
				/* managed to connect, but connection was lost */
				workerPool->activeConnectionCount--;

				if (session->currentTask == NULL)
				{
					/* this was an idle connection */
					workerPool->idleConnectionCount--;
				}

				connection->connectionState = MULTI_CONNECTION_FAILED;
				break;
			}

			case MULTI_CONNECTION_FAILED:
			{
				/* connection failed or was lost */
				int totalConnectionCount = FUNC12(workerPool->sessionList);

				workerPool->failedConnectionCount++;

				/* if the connection executed a critical command it should fail */
				FUNC0(connection, false);

				/* mark all assigned placement executions as failed */
				FUNC9(session);

				if (workerPool->failedConnectionCount >= totalConnectionCount)
				{
					/*
					 * All current connection attempts have failed.
					 * Mark all unassigned placement executions as failed.
					 *
					 * We do not currently retry if the first connection
					 * attempt fails.
					 */
					FUNC8(workerPool);
				}

				/*
				 * The execution may have failed as a result of WorkerSessionFailed
				 * or WorkerPoolFailed.
				 */
				if (execution->failed || execution->errorOnAnyFailure)
				{
					/* a task has failed due to this connection failure */
					FUNC3(connection, ERROR);
				}
				else
				{
					/* can continue with the remaining nodes */
					FUNC3(connection, WARNING);
				}

				/* remove the connection */
				FUNC6(connection);

				/*
				 * We forcefully close the underlying libpq connection because
				 * we don't want any subsequent execution (either subPlan executions
				 * or new command executions within a transaction block) use the
				 * connection.
				 *
				 * However, we prefer to keep the MultiConnection around until
				 * the end of FinishDistributedExecution() to simplify the code.
				 * Thus, we prefer ShutdownConnection() over CloseConnection().
				 */
				FUNC4(connection);

				/* remove connection from wait event set */
				execution->connectionSetChanged = true;

				/*
				 * Reset the transaction state machine since CloseConnection()
				 * relies on it and even if we're not inside a distributed transaction
				 * we set the transaction state (e.g., REMOTE_TRANS_SENT_COMMAND).
				 */
				if (!connection->remoteTransaction.beginSent)
				{
					connection->remoteTransaction.transactionState =
						REMOTE_TRANS_INVALID;
				}

				break;
			}

			default:
			{
				break;
			}
		}
	} while (connection->connectionState != currentState);
}