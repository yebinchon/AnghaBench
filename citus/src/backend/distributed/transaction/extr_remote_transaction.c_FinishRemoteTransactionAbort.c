
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ transactionState; } ;
struct TYPE_10__ {TYPE_1__ remoteTransaction; } ;
typedef TYPE_1__ RemoteTransaction ;
typedef int PGresult ;
typedef TYPE_2__ MultiConnection ;


 int ClearResults (TYPE_2__*,int const) ;
 int * GetRemoteCommandResult (TYPE_2__*,int const) ;
 int HandleRemoteTransactionResultError (TYPE_2__*,int *,int const) ;
 int IsResponseOK (int *) ;
 int PQclear (int *) ;
 scalar_t__ REMOTE_TRANS_2PC_ABORTING ;
 scalar_t__ REMOTE_TRANS_ABORTED ;
 int ShutdownConnection (TYPE_2__*) ;
 int WarnAboutLeakedPreparedTransaction (TYPE_2__*,int const) ;

void
FinishRemoteTransactionAbort(MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;
 const bool raiseErrors = 0;

 if (transaction->transactionState == REMOTE_TRANS_2PC_ABORTING)
 {
  PGresult *result = GetRemoteCommandResult(connection, raiseErrors);
  if (!IsResponseOK(result))
  {
   const bool isCommit = 0;

   HandleRemoteTransactionResultError(connection, result, raiseErrors);

   WarnAboutLeakedPreparedTransaction(connection, isCommit);
  }

  PQclear(result);
 }







 if (!ClearResults(connection, raiseErrors))
 {
  ShutdownConnection(connection);
 }

 transaction->transactionState = REMOTE_TRANS_ABORTED;
}
