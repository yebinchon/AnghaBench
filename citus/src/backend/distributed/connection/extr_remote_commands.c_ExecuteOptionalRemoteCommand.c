
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int MultiConnection ;


 int ForgetResults (int *) ;
 int * GetRemoteCommandResult (int *,int) ;
 int IsResponseOK (int *) ;
 int PQclear (int *) ;
 int QUERY_SEND_FAILED ;
 int RESPONSE_NOT_OKAY ;
 int RESPONSE_OKAY ;
 int ReportConnectionError (int *,int ) ;
 int ReportResultError (int *,int *,int ) ;
 int SendRemoteCommand (int *,char const*) ;
 int WARNING ;

int
ExecuteOptionalRemoteCommand(MultiConnection *connection, const char *command,
        PGresult **result)
{
 int querySent = 0;
 PGresult *localResult = ((void*)0);
 bool raiseInterrupts = 1;

 querySent = SendRemoteCommand(connection, command);
 if (querySent == 0)
 {
  ReportConnectionError(connection, WARNING);
  return QUERY_SEND_FAILED;
 }

 localResult = GetRemoteCommandResult(connection, raiseInterrupts);
 if (!IsResponseOK(localResult))
 {
  ReportResultError(connection, localResult, WARNING);
  PQclear(localResult);
  ForgetResults(connection);
  return RESPONSE_NOT_OKAY;
 }





 if (result != ((void*)0))
 {
  *result = localResult;
 }
 else
 {
  PQclear(localResult);
  ForgetResults(connection);
 }

 return RESPONSE_OKAY;
}
