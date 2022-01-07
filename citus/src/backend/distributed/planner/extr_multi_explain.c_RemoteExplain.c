
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int queryString; int * taskPlacementList; } ;
typedef TYPE_1__ Task ;
struct TYPE_16__ {int pgConn; } ;
struct TYPE_15__ {int placementIndex; int explainOutputList; } ;
struct TYPE_14__ {int data; } ;
typedef TYPE_2__* StringInfo ;
typedef int ShardPlacement ;
typedef TYPE_3__ RemoteExplainPlan ;
typedef int PGresult ;
typedef TYPE_4__ MultiConnection ;
typedef int List ;
typedef int ExplainState ;


 int BeginOrContinueCoordinatedTransaction () ;
 TYPE_2__* BuildRemoteExplainQuery (int ,int *) ;
 scalar_t__ CONNECTION_OK ;
 int ExecuteCriticalRemoteCommand (TYPE_4__*,char*) ;
 int ExecuteOptionalRemoteCommand (TYPE_4__*,int ,int **) ;
 int ForgetResults (TYPE_4__*) ;
 TYPE_4__* GetPlacementConnection (int,int *,int *) ;
 int NIL ;
 int PQclear (int *) ;
 scalar_t__ PQstatus (int ) ;
 int ReadFirstColumnAsText (int *) ;
 int RemoteTransactionBeginIfNecessary (TYPE_4__*) ;
 int list_length (int *) ;
 int * list_nth (int *,int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static RemoteExplainPlan *
RemoteExplain(Task *task, ExplainState *es)
{
 StringInfo explainQuery = ((void*)0);
 List *taskPlacementList = task->taskPlacementList;
 int placementCount = list_length(taskPlacementList);
 int placementIndex = 0;
 RemoteExplainPlan *remotePlan = ((void*)0);

 remotePlan = (RemoteExplainPlan *) palloc0(sizeof(RemoteExplainPlan));
 explainQuery = BuildRemoteExplainQuery(task->queryString, es);





 BeginOrContinueCoordinatedTransaction();

 for (placementIndex = 0; placementIndex < placementCount; placementIndex++)
 {
  ShardPlacement *taskPlacement = list_nth(taskPlacementList, placementIndex);
  MultiConnection *connection = ((void*)0);
  PGresult *queryResult = ((void*)0);
  int connectionFlags = 0;
  int executeResult = 0;

  remotePlan->placementIndex = placementIndex;

  connection = GetPlacementConnection(connectionFlags, taskPlacement, ((void*)0));


  if (PQstatus(connection->pgConn) != CONNECTION_OK)
  {
   continue;
  }

  RemoteTransactionBeginIfNecessary(connection);






  ExecuteCriticalRemoteCommand(connection, "SAVEPOINT citus_explain_savepoint");


  executeResult = ExecuteOptionalRemoteCommand(connection, explainQuery->data,
              &queryResult);
  if (executeResult != 0)
  {
   PQclear(queryResult);
   ForgetResults(connection);

   continue;
  }


  remotePlan->explainOutputList = ReadFirstColumnAsText(queryResult);

  PQclear(queryResult);
  ForgetResults(connection);


  ExecuteCriticalRemoteCommand(connection,
          "ROLLBACK TO SAVEPOINT citus_explain_savepoint");

  if (remotePlan->explainOutputList != NIL)
  {
   break;
  }
 }

 return remotePlan;
}
