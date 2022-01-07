
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_5__ {int pgConn; } ;
typedef int PGresult ;
typedef TYPE_1__ MultiConnection ;
typedef scalar_t__ ExecStatusType ;
typedef scalar_t__ ConnStatusType ;
typedef int BatchQueryStatus ;


 int Assert (int) ;
 int CLIENT_BATCH_QUERY_CONTINUE ;
 int CLIENT_BATCH_QUERY_DONE ;
 int CLIENT_BATCH_QUERY_FAILED ;
 int CLIENT_INVALID_BATCH_QUERY ;
 scalar_t__ CONNECTION_BAD ;
 scalar_t__ CONNECTION_OK ;
 TYPE_1__** ClientConnectionArray ;
 int * GetRemoteCommandResult (TYPE_1__*,int) ;
 size_t INVALID_CONNECTION_ID ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQstatus (int ) ;
 int ReportResultError (TYPE_1__*,int *,int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

BatchQueryStatus
MultiClientBatchResult(int32 connectionId, void **queryResult, int *rowCount,
        int *columnCount)
{
 MultiConnection *connection = ((void*)0);
 PGresult *result = ((void*)0);
 ConnStatusType connStatusType = CONNECTION_OK;
 ExecStatusType resultStatus = PGRES_COMMAND_OK;
 BatchQueryStatus queryStatus = CLIENT_INVALID_BATCH_QUERY;
 bool raiseInterrupts = 1;

 Assert(connectionId != INVALID_CONNECTION_ID);
 connection = ClientConnectionArray[connectionId];
 Assert(connection != ((void*)0));


 (*queryResult) = ((void*)0);
 (*rowCount) = -1;
 (*columnCount) = -1;

 connStatusType = PQstatus(connection->pgConn);
 if (connStatusType == CONNECTION_BAD)
 {
  ereport(WARNING, (errmsg("could not maintain connection to worker node")));
  return CLIENT_BATCH_QUERY_FAILED;
 }

 result = GetRemoteCommandResult(connection, raiseInterrupts);
 if (result == ((void*)0))
 {
  return CLIENT_BATCH_QUERY_DONE;
 }

 resultStatus = PQresultStatus(result);
 if (resultStatus == PGRES_TUPLES_OK)
 {
  (*queryResult) = (void **) result;
  (*rowCount) = PQntuples(result);
  (*columnCount) = PQnfields(result);
  queryStatus = CLIENT_BATCH_QUERY_CONTINUE;
 }
 else if (resultStatus == PGRES_COMMAND_OK)
 {
  (*queryResult) = (void **) result;
  queryStatus = CLIENT_BATCH_QUERY_CONTINUE;
 }
 else
 {
  ReportResultError(connection, result, WARNING);
  PQclear(result);
  queryStatus = CLIENT_BATCH_QUERY_FAILED;
 }

 return queryStatus;
}
