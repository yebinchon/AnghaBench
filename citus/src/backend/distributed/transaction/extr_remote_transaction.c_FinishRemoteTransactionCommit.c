
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ transactionState; } ;
struct TYPE_9__ {int port; int hostname; TYPE_1__ remoteTransaction; } ;
typedef TYPE_1__ RemoteTransaction ;
typedef int PGresult ;
typedef TYPE_2__ MultiConnection ;


 int Assert (int) ;
 int ForgetResults (TYPE_2__*) ;
 int * GetRemoteCommandResult (TYPE_2__*,int const) ;
 int HandleRemoteTransactionResultError (TYPE_2__*,int *,int const) ;
 int IsResponseOK (int *) ;
 int PQclear (int *) ;
 scalar_t__ REMOTE_TRANS_1PC_ABORTING ;
 scalar_t__ REMOTE_TRANS_1PC_COMMITTING ;
 scalar_t__ REMOTE_TRANS_2PC_ABORTING ;
 scalar_t__ REMOTE_TRANS_2PC_COMMITTING ;
 scalar_t__ REMOTE_TRANS_ABORTED ;
 scalar_t__ REMOTE_TRANS_COMMITTED ;
 int WARNING ;
 int WarnAboutLeakedPreparedTransaction (TYPE_2__*,int const) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ) ;

void
FinishRemoteTransactionCommit(MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;
 PGresult *result = ((void*)0);
 const bool raiseErrors = 0;
 const bool isCommit = 1;

 Assert(transaction->transactionState == REMOTE_TRANS_1PC_ABORTING ||
     transaction->transactionState == REMOTE_TRANS_1PC_COMMITTING ||
     transaction->transactionState == REMOTE_TRANS_2PC_COMMITTING);

 result = GetRemoteCommandResult(connection, raiseErrors);

 if (!IsResponseOK(result))
 {
  HandleRemoteTransactionResultError(connection, result, raiseErrors);
  if (transaction->transactionState == REMOTE_TRANS_1PC_COMMITTING)
  {
   ereport(WARNING, (errmsg("failed to commit transaction on %s:%d",
          connection->hostname, connection->port)));
  }
  else if (transaction->transactionState == REMOTE_TRANS_2PC_COMMITTING)
  {
   ereport(WARNING, (errmsg("failed to commit transaction on %s:%d",
          connection->hostname, connection->port)));
   WarnAboutLeakedPreparedTransaction(connection, isCommit);
  }
 }
 else if (transaction->transactionState == REMOTE_TRANS_1PC_ABORTING ||
    transaction->transactionState == REMOTE_TRANS_2PC_ABORTING)
 {
  transaction->transactionState = REMOTE_TRANS_ABORTED;
 }
 else
 {
  transaction->transactionState = REMOTE_TRANS_COMMITTED;
 }

 PQclear(result);

 ForgetResults(connection);
}
