
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int PGresult ;
typedef int MultiConnection ;
typedef int List ;


 int ERROR ;
 int ForgetResults (int *) ;
 int GetLocalGroupId () ;
 int * GetRemoteCommandResult (int *,int) ;
 int IsResponseOK (int *) ;
 int * NIL ;
 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int const) ;
 int PQntuples (int *) ;
 int ReportConnectionError (int *,int ) ;
 int ReportResultError (int *,int *,int ) ;
 int SendRemoteCommand (int *,int ) ;
 int appendStringInfo (TYPE_1__*,char*,int) ;
 int * lappend (int *,int ) ;
 TYPE_1__* makeStringInfo () ;
 int pstrdup (char*) ;

__attribute__((used)) static List *
PendingWorkerTransactionList(MultiConnection *connection)
{
 StringInfo command = makeStringInfo();
 bool raiseInterrupts = 1;
 int querySent = 0;
 PGresult *result = ((void*)0);
 int rowCount = 0;
 int rowIndex = 0;
 List *transactionNames = NIL;
 int coordinatorId = GetLocalGroupId();

 appendStringInfo(command, "SELECT gid FROM pg_prepared_xacts "
         "WHERE gid LIKE 'citus\\_%d\\_%%'",
      coordinatorId);

 querySent = SendRemoteCommand(connection, command->data);
 if (querySent == 0)
 {
  ReportConnectionError(connection, ERROR);
 }

 result = GetRemoteCommandResult(connection, raiseInterrupts);
 if (!IsResponseOK(result))
 {
  ReportResultError(connection, result, ERROR);
 }

 rowCount = PQntuples(result);

 for (rowIndex = 0; rowIndex < rowCount; rowIndex++)
 {
  const int columnIndex = 0;
  char *transactionName = PQgetvalue(result, rowIndex, columnIndex);

  transactionNames = lappend(transactionNames, pstrdup(transactionName));
 }

 PQclear(result);
 ForgetResults(connection);

 return transactionNames;
}
