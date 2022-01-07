
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_7__ {int pgConn; } ;
typedef int StringInfo ;
typedef int PGresult ;
typedef TYPE_1__ MultiConnection ;


 scalar_t__ CONNECTION_OK ;
 int CloseConnection (TYPE_1__*) ;
 int EvaluateQueryResult (TYPE_1__*,int *,int ) ;
 int FORCE_NEW_CONNECTION ;
 TYPE_1__* GetNodeConnection (int,char*,scalar_t__) ;
 int * GetRemoteCommandResult (TYPE_1__*,int) ;
 int PQclear (int *) ;
 scalar_t__ PQstatus (int ) ;
 int SendRemoteCommand (TYPE_1__*,char*) ;
 int appendStringInfo (int ,char*,char*,int) ;

__attribute__((used)) static bool
ExecuteRemoteQueryOrCommand(char *nodeName, uint32 nodePort, char *queryString,
       StringInfo queryResultString)
{
 int connectionFlags = FORCE_NEW_CONNECTION;
 MultiConnection *connection =
  GetNodeConnection(connectionFlags, nodeName, nodePort);
 bool success = 0;
 PGresult *queryResult = ((void*)0);
 bool raiseInterrupts = 1;

 if (PQstatus(connection->pgConn) != CONNECTION_OK)
 {
  appendStringInfo(queryResultString, "failed to connect to %s:%d", nodeName,
       (int) nodePort);
  return 0;
 }

 SendRemoteCommand(connection, queryString);
 queryResult = GetRemoteCommandResult(connection, raiseInterrupts);
 success = EvaluateQueryResult(connection, queryResult, queryResultString);

 PQclear(queryResult);


 CloseConnection(connection);

 return success;
}
