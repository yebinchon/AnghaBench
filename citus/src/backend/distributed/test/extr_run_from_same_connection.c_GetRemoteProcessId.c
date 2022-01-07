
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int PGresult ;


 int ClearResults (int ,int) ;
 int ExecuteOptionalRemoteCommand (int ,int ,int **) ;
 int GET_PROCESS_ID ;
 int PG_RETURN_VOID () ;
 int PQclear (int *) ;
 int PQntuples (int *) ;
 int ParseIntField (int *,int ,int ) ;
 int appendStringInfo (TYPE_1__*,int ) ;
 TYPE_1__* makeStringInfo () ;
 int singleConnection ;

__attribute__((used)) static int64
GetRemoteProcessId()
{
 StringInfo queryStringInfo = makeStringInfo();
 PGresult *result = ((void*)0);
 int64 rowCount = 0;
 int64 resultValue = 0;

 appendStringInfo(queryStringInfo, GET_PROCESS_ID);

 ExecuteOptionalRemoteCommand(singleConnection, queryStringInfo->data, &result);

 rowCount = PQntuples(result);

 if (rowCount != 1)
 {
  PG_RETURN_VOID();
 }

 resultValue = ParseIntField(result, 0, 0);

 PQclear(result);
 ClearResults(singleConnection, 0);

 return resultValue;
}
