
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pgConn; } ;
typedef int StringInfo ;
typedef int PGresult ;
typedef TYPE_1__ MultiConnection ;
typedef scalar_t__ ConnStatusType ;


 scalar_t__ CONNECTION_BAD ;
 int EvaluateQueryResult (TYPE_1__*,int *,int ) ;
 int PQclear (int *) ;
 int PQconsumeInput (int ) ;
 int * PQgetResult (int ) ;
 scalar_t__ PQisBusy (int ) ;
 scalar_t__ PQstatus (int ) ;
 int appendStringInfo (int ,char*) ;
 int resetStringInfo (int ) ;

__attribute__((used)) static bool
GetConnectionStatusAndResult(MultiConnection *connection, bool *resultStatus,
        StringInfo queryResultString)
{
 bool finished = 1;
 ConnStatusType connectionStatus = PQstatus(connection->pgConn);
 int consumeInput = 0;
 PGresult *queryResult = ((void*)0);
 bool success = 0;

 *resultStatus = 0;
 resetStringInfo(queryResultString);

 if (connectionStatus == CONNECTION_BAD)
 {
  appendStringInfo(queryResultString, "connection lost");
  return finished;
 }

 consumeInput = PQconsumeInput(connection->pgConn);
 if (consumeInput == 0)
 {
  appendStringInfo(queryResultString, "query result unavailable");
  return finished;
 }


 if (PQisBusy(connection->pgConn) != 0)
 {
  finished = 0;
  return finished;
 }


 queryResult = PQgetResult(connection->pgConn);
 success = EvaluateQueryResult(connection, queryResult, queryResultString);
 PQclear(queryResult);

 *resultStatus = success;
 finished = 1;
 return 1;
}
