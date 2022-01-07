
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int MultiConnection ;


 int ERROR ;
 int ForgetResults (int *) ;
 int * GetRemoteCommandResult (int *,int) ;
 int IsResponseOK (int *) ;
 int PQclear (int *) ;
 int ReportConnectionError (int *,int ) ;
 int ReportResultError (int *,int *,int ) ;
 int SendRemoteCommand (int *,char const*) ;

void
ExecuteCriticalRemoteCommand(MultiConnection *connection, const char *command)
{
 int querySent = 0;
 PGresult *result = ((void*)0);
 bool raiseInterrupts = 1;

 querySent = SendRemoteCommand(connection, command);
 if (querySent == 0)
 {
  ReportConnectionError(connection, ERROR);
 }

 result = GetRemoteCommandResult(connection, raiseInterrupts);
 if (!IsResponseOK(result))
 {
  ReportResultError(connection, result, ERROR);
 }

 PQclear(result);
 ForgetResults(connection);
}
