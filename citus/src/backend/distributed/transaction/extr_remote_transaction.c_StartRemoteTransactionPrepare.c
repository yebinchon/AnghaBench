
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ transactionState; int preparedName; int transactionFailed; } ;
struct MultiConnection {int port; int hostname; TYPE_3__ remoteTransaction; } ;
struct TYPE_7__ {int groupId; } ;
typedef TYPE_1__ WorkerNode ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__ StringInfoData ;
typedef TYPE_3__ RemoteTransaction ;


 int Assert (int) ;
 int Assign2PCIdentifier (struct MultiConnection*) ;
 TYPE_1__* FindWorkerNode (int ,int ) ;
 int HandleRemoteTransactionConnectionError (struct MultiConnection*,int const) ;
 int LogTransactionRecord (int ,int ) ;
 scalar_t__ REMOTE_TRANS_INVALID ;
 scalar_t__ REMOTE_TRANS_PREPARING ;
 int SendRemoteCommand (struct MultiConnection*,int ) ;
 int appendStringInfo (TYPE_2__*,char*,int ) ;
 int initStringInfo (TYPE_2__*) ;
 int quote_literal_cstr (int ) ;

void
StartRemoteTransactionPrepare(struct MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;
 StringInfoData command;
 const bool raiseErrors = 1;
 WorkerNode *workerNode = ((void*)0);


 Assert(transaction->transactionState != REMOTE_TRANS_INVALID);


 Assert(!transaction->transactionFailed);


 Assert(transaction->transactionState < REMOTE_TRANS_PREPARING);

 Assign2PCIdentifier(connection);


 workerNode = FindWorkerNode(connection->hostname, connection->port);
 if (workerNode != ((void*)0))
 {
  LogTransactionRecord(workerNode->groupId, transaction->preparedName);
 }

 initStringInfo(&command);
 appendStringInfo(&command, "PREPARE TRANSACTION %s",
      quote_literal_cstr(transaction->preparedName));

 if (!SendRemoteCommand(connection, command.data))
 {
  HandleRemoteTransactionConnectionError(connection, raiseErrors);
 }
 else
 {
  transaction->transactionState = REMOTE_TRANS_PREPARING;
 }
}
