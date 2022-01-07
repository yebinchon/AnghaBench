
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int port; int hostname; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int PGresult ;
typedef TYPE_2__ MultiConnection ;


 int ClearResults (TYPE_2__*,int) ;
 int ExecuteOptionalRemoteCommand (TYPE_2__*,int ,int **) ;
 int LOG ;
 int PQclear (int *) ;
 int QUERY_SEND_FAILED ;
 int RESPONSE_NOT_OKAY ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int ereport (int ,int ) ;
 int errcontext (char*,int ) ;
 int errmsg (char*,int ,int ) ;
 TYPE_1__* makeStringInfo () ;
 int quote_literal_cstr (char*) ;

__attribute__((used)) static bool
RecoverPreparedTransactionOnWorker(MultiConnection *connection, char *transactionName,
           bool shouldCommit)
{
 StringInfo command = makeStringInfo();
 PGresult *result = ((void*)0);
 int executeCommand = 0;
 bool raiseInterrupts = 0;

 if (shouldCommit)
 {

  appendStringInfo(command, "COMMIT PREPARED %s",
       quote_literal_cstr(transactionName));
 }
 else
 {

  appendStringInfo(command, "ROLLBACK PREPARED %s",
       quote_literal_cstr(transactionName));
 }

 executeCommand = ExecuteOptionalRemoteCommand(connection, command->data, &result);
 if (executeCommand == QUERY_SEND_FAILED)
 {
  return 0;
 }
 if (executeCommand == RESPONSE_NOT_OKAY)
 {
  return 0;
 }

 PQclear(result);
 ClearResults(connection, raiseInterrupts);

 ereport(LOG, (errmsg("recovered a prepared transaction on %s:%d",
       connection->hostname, connection->port),
      errcontext("%s", command->data)));

 return 1;
}
