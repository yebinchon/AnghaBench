
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PGresult ;
typedef int MultiConnection ;
typedef scalar_t__ ExecStatusType ;


 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 char* PQcmdStatus (int *) ;
 int PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int StoreErrorMessage (int *,int ) ;
 int appendStringInfo (int ,char*,...) ;

__attribute__((used)) static bool
EvaluateQueryResult(MultiConnection *connection, PGresult *queryResult,
     StringInfo queryResultString)
{
 bool success = 0;

 ExecStatusType resultStatus = PQresultStatus(queryResult);
 if (resultStatus == PGRES_COMMAND_OK)
 {
  char *commandStatus = PQcmdStatus(queryResult);
  appendStringInfo(queryResultString, "%s", commandStatus);
  success = 1;
 }
 else if (resultStatus == PGRES_TUPLES_OK)
 {
  int ntuples = PQntuples(queryResult);
  int nfields = PQnfields(queryResult);


  if (nfields != 1)
  {
   appendStringInfo(queryResultString,
        "expected a single column in query target");
  }
  else if (ntuples > 1)
  {
   appendStringInfo(queryResultString,
        "expected a single row in query result");
  }
  else
  {
   int row = 0;
   int column = 0;
   if (!PQgetisnull(queryResult, row, column))
   {
    char *queryResultValue = PQgetvalue(queryResult, row, column);
    appendStringInfo(queryResultString, "%s", queryResultValue);
   }
   success = 1;
  }
 }
 else
 {
  StoreErrorMessage(connection, queryResultString);
 }

 return success;
}
