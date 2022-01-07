
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {TYPE_3__* currentTask; TYPE_6__* connection; TYPE_2__* workerPool; } ;
typedef TYPE_1__ WorkerSession ;
struct TYPE_22__ {int idleConnectionCount; TYPE_7__* distributedExecution; } ;
typedef TYPE_2__ WorkerPool ;
struct TYPE_23__ {TYPE_4__* shardCommandExecution; } ;
typedef TYPE_3__ TaskPlacementExecution ;
struct TYPE_27__ {int isTransaction; } ;
struct TYPE_25__ {int transactionState; } ;
struct TYPE_26__ {int connectionState; int pgConn; TYPE_5__ remoteTransaction; } ;
struct TYPE_24__ {int expectResults; int gotResults; } ;
typedef TYPE_4__ ShardCommandExecution ;
typedef int RemoteTransactionState ;
typedef TYPE_5__ RemoteTransaction ;
typedef int PGresult ;
typedef TYPE_6__ MultiConnection ;
typedef TYPE_7__ DistributedExecution ;


 int Activate2PCIfModifyingTransactionExpandsToNewNode (TYPE_1__*) ;
 int Assert (int) ;
 int CheckConnectionReady (TYPE_1__*) ;
 int ERROR ;
 int IsResponseOK (int *) ;
 int MULTI_CONNECTION_LOST ;
 int MarkRemoteTransactionCritical (TYPE_6__*) ;
 int PQclear (int *) ;
 int * PQgetResult (int ) ;
 int PlacementExecutionDone (TYPE_3__*,int) ;
 TYPE_3__* PopPlacementExecution (TYPE_1__*) ;





 int ReceiveResults (TYPE_1__*,int) ;
 int ReportResultError (TYPE_6__*,int *,int ) ;
 int StartPlacementExecutionOnSession (TYPE_3__*,TYPE_1__*) ;
 int StartRemoteTransactionBegin (TYPE_6__*) ;
 int UpdateConnectionWaitFlags (TYPE_1__*,int) ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;

__attribute__((used)) static void
TransactionStateMachine(WorkerSession *session)
{
 WorkerPool *workerPool = session->workerPool;
 DistributedExecution *execution = workerPool->distributedExecution;

 MultiConnection *connection = session->connection;
 RemoteTransaction *transaction = &(connection->remoteTransaction);
 RemoteTransactionState currentState;

 do {
  currentState = transaction->transactionState;

  if (!CheckConnectionReady(session))
  {

   break;
  }

  switch (currentState)
  {
   case 131:
   {
    if (execution->isTransaction)
    {

     Activate2PCIfModifyingTransactionExpandsToNewNode(session);


     StartRemoteTransactionBegin(connection);

     transaction->transactionState = 132;
    }
    else
    {
     TaskPlacementExecution *placementExecution = ((void*)0);
     bool placementExecutionStarted = 0;

     placementExecution = PopPlacementExecution(session);
     if (placementExecution == ((void*)0))
     {




      UpdateConnectionWaitFlags(session, WL_SOCKET_READABLE);

      break;
     }

     placementExecutionStarted =
      StartPlacementExecutionOnSession(placementExecution, session);
     if (!placementExecutionStarted)
     {

      Assert(session->connection->connectionState ==
          MULTI_CONNECTION_LOST);

      return;
     }

     transaction->transactionState = 129;
    }

    UpdateConnectionWaitFlags(session,
            WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);
    break;
   }

   case 130:
   case 132:
   {
    PGresult *result = ((void*)0);

    result = PQgetResult(connection->pgConn);
    if (result != ((void*)0))
    {
     if (!IsResponseOK(result))
     {

      ReportResultError(connection, result, ERROR);
     }

     PQclear(result);


     UpdateConnectionWaitFlags(session,
             WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);

     break;
    }

    if (session->currentTask != ((void*)0))
    {
     TaskPlacementExecution *placementExecution = session->currentTask;
     bool succeeded = 1;





     MarkRemoteTransactionCritical(connection);

     session->currentTask = ((void*)0);

     PlacementExecutionDone(placementExecution, succeeded);


     workerPool->idleConnectionCount++;
    }


    UpdateConnectionWaitFlags(session,
            WL_SOCKET_READABLE | WL_SOCKET_WRITEABLE);

    if (execution->isTransaction)
    {
     transaction->transactionState = 128;
    }
    else
    {
     transaction->transactionState = 131;
    }
    break;
   }

   case 128:
   {
    TaskPlacementExecution *placementExecution = ((void*)0);
    bool placementExecutionStarted = 0;

    placementExecution = PopPlacementExecution(session);
    if (placementExecution == ((void*)0))
    {

     UpdateConnectionWaitFlags(session, WL_SOCKET_READABLE);
     break;
    }

    placementExecutionStarted =
     StartPlacementExecutionOnSession(placementExecution, session);
    if (!placementExecutionStarted)
    {

     Assert(session->connection->connectionState == MULTI_CONNECTION_LOST);

     return;
    }

    transaction->transactionState = 129;
    break;
   }

   case 129:
   {
    bool fetchDone = 0;
    TaskPlacementExecution *placementExecution = session->currentTask;
    ShardCommandExecution *shardCommandExecution =
     placementExecution->shardCommandExecution;
    bool storeRows = shardCommandExecution->expectResults;

    if (shardCommandExecution->gotResults)
    {

     storeRows = 0;
    }

    fetchDone = ReceiveResults(session, storeRows);
    if (!fetchDone)
    {
     break;
    }

    shardCommandExecution->gotResults = 1;
    transaction->transactionState = 132;
    break;
   }

   default:
   {
    break;
   }
  }
 }

 while (transaction->transactionState != currentState);
}
