
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int * currentTask; int sessionId; TYPE_4__* connection; TYPE_3__* workerPool; } ;
typedef TYPE_2__ WorkerSession ;
struct TYPE_17__ {int failedConnectionCount; int sessionList; int idleConnectionCount; int activeConnectionCount; TYPE_5__* distributedExecution; } ;
typedef TYPE_3__ WorkerPool ;
struct TYPE_19__ {int connectionSetChanged; int errorOnAnyFailure; int failed; } ;
struct TYPE_15__ {int transactionState; int beginSent; } ;
struct TYPE_18__ {int connectionState; TYPE_1__ remoteTransaction; int port; int hostname; int pgConn; } ;
typedef int PostgresPollingStatusType ;
typedef int MultiConnectionState ;
typedef TYPE_4__ MultiConnection ;
typedef TYPE_5__ DistributedExecution ;
typedef int ConnStatusType ;


 int CONNECTION_BAD ;
 int CONNECTION_OK ;
 int DEBUG4 ;
 int ERROR ;





 int MarkRemoteTransactionFailed (TYPE_4__*,int) ;
 int PGRES_POLLING_FAILED ;
 int PGRES_POLLING_READING ;
 int PGRES_POLLING_WRITING ;
 int PQconnectPoll (int ) ;
 int PQstatus (int ) ;
 int REMOTE_TRANS_INVALID ;
 int ReportConnectionError (TYPE_4__*,int ) ;
 int ShutdownConnection (TYPE_4__*) ;
 int TransactionStateMachine (TYPE_2__*) ;
 int UnclaimConnection (TYPE_4__*) ;
 int UpdateConnectionWaitFlags (TYPE_2__*,int) ;
 int WARNING ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;
 int WorkerPoolFailed (TYPE_3__*) ;
 int WorkerSessionFailed (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ,int ) ;
 int list_length (int ) ;

__attribute__((used)) static void
ConnectionStateMachine(WorkerSession *session)
{
 WorkerPool *workerPool = session->workerPool;
 DistributedExecution *execution = workerPool->distributedExecution;

 MultiConnection *connection = session->connection;
 MultiConnectionState currentState;

 do {
  currentState = connection->connectionState;

  switch (currentState)
  {
   case 129:
   {

    connection->connectionState = 131;
    break;
   }

   case 131:
   {
    PostgresPollingStatusType pollMode;

    ConnStatusType status = PQstatus(connection->pgConn);
    if (status == CONNECTION_OK)
    {
     ereport(DEBUG4, (errmsg("established connection to %s:%d for "
           "session %ld",
           connection->hostname, connection->port,
           session->sessionId)));

     workerPool->activeConnectionCount++;
     workerPool->idleConnectionCount++;

     UpdateConnectionWaitFlags(session,
             WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);

     connection->connectionState = 132;
     break;
    }
    else if (status == CONNECTION_BAD)
    {
     connection->connectionState = 130;
     break;
    }

    pollMode = PQconnectPoll(connection->pgConn);
    if (pollMode == PGRES_POLLING_FAILED)
    {
     connection->connectionState = 130;
    }
    else if (pollMode == PGRES_POLLING_READING)
    {
     UpdateConnectionWaitFlags(session, WL_SOCKET_READABLE);
    }
    else if (pollMode == PGRES_POLLING_WRITING)
    {
     UpdateConnectionWaitFlags(session, WL_SOCKET_WRITEABLE);
    }
    else
    {
     ereport(DEBUG4, (errmsg("established connection to %s:%d for "
           "session %ld",
           connection->hostname, connection->port,
           session->sessionId)));

     workerPool->activeConnectionCount++;
     workerPool->idleConnectionCount++;

     UpdateConnectionWaitFlags(session,
             WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);

     connection->connectionState = 132;
    }

    break;
   }

   case 132:
   {

    TransactionStateMachine(session);
    break;
   }

   case 128:
   {

    workerPool->activeConnectionCount--;

    if (session->currentTask == ((void*)0))
    {

     workerPool->idleConnectionCount--;
    }

    connection->connectionState = 130;
    break;
   }

   case 130:
   {

    int totalConnectionCount = list_length(workerPool->sessionList);

    workerPool->failedConnectionCount++;


    MarkRemoteTransactionFailed(connection, 0);


    WorkerSessionFailed(session);

    if (workerPool->failedConnectionCount >= totalConnectionCount)
    {







     WorkerPoolFailed(workerPool);
    }





    if (execution->failed || execution->errorOnAnyFailure)
    {

     ReportConnectionError(connection, ERROR);
    }
    else
    {

     ReportConnectionError(connection, WARNING);
    }


    UnclaimConnection(connection);
    ShutdownConnection(connection);


    execution->connectionSetChanged = 1;






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
