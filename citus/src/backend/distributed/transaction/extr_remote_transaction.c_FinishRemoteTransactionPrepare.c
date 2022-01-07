
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ transactionState; int preparedName; } ;
struct MultiConnection {int port; int hostname; TYPE_1__ remoteTransaction; } ;
typedef TYPE_1__ RemoteTransaction ;
typedef int PGresult ;


 int Assert (int) ;
 int ClearResults (struct MultiConnection*,int const) ;
 int ERROR ;
 int * GetRemoteCommandResult (struct MultiConnection*,int const) ;
 int HandleRemoteTransactionResultError (struct MultiConnection*,int *,int const) ;
 int IsResponseOK (int *) ;
 int PQclear (int *) ;
 scalar_t__ REMOTE_TRANS_ABORTED ;
 scalar_t__ REMOTE_TRANS_PREPARED ;
 scalar_t__ REMOTE_TRANS_PREPARING ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ,int ) ;

void
FinishRemoteTransactionPrepare(struct MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;
 PGresult *result = ((void*)0);
 const bool raiseErrors = 1;

 Assert(transaction->transactionState == REMOTE_TRANS_PREPARING);

 result = GetRemoteCommandResult(connection, raiseErrors);

 if (!IsResponseOK(result))
 {
  transaction->transactionState = REMOTE_TRANS_ABORTED;
  HandleRemoteTransactionResultError(connection, result, raiseErrors);
 }
 else
 {
  transaction->transactionState = REMOTE_TRANS_PREPARED;
 }

 PQclear(result);
 if (!ClearResults(connection, raiseErrors))
 {
  ereport(ERROR, (errmsg("failed to prepare transaction '%s' on host %s:%d",
          transaction->preparedName, connection->hostname,
          connection->port),
      errhint("Try re-running the command.")));
 }
}
