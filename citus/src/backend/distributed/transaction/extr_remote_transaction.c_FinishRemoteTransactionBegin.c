
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ transactionState; int transactionFailed; int lastQueuedSubXact; int lastSuccessfulSubXact; } ;
struct MultiConnection {int pgConn; TYPE_1__ remoteTransaction; } ;
typedef TYPE_1__ RemoteTransaction ;


 int Assert (int) ;
 int ClearResults (struct MultiConnection*,int) ;
 scalar_t__ PQTRANS_INTRANS ;
 scalar_t__ PQtransactionStatus (int ) ;
 scalar_t__ REMOTE_TRANS_STARTED ;
 scalar_t__ REMOTE_TRANS_STARTING ;

void
FinishRemoteTransactionBegin(struct MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;
 bool clearSuccessful = 1;
 bool raiseErrors = 1;

 Assert(transaction->transactionState == REMOTE_TRANS_STARTING);

 clearSuccessful = ClearResults(connection, raiseErrors);
 if (clearSuccessful)
 {
  transaction->transactionState = REMOTE_TRANS_STARTED;
  transaction->lastSuccessfulSubXact = transaction->lastQueuedSubXact;
 }

 if (!transaction->transactionFailed)
 {
  Assert(PQtransactionStatus(connection->pgConn) == PQTRANS_INTRANS);
 }
}
