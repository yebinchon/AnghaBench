
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ transactionState; int preparedName; } ;
struct TYPE_16__ {TYPE_2__ remoteTransaction; } ;
struct TYPE_14__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ RemoteTransaction ;
typedef TYPE_3__ MultiConnection ;


 int Assert (int) ;
 int ClearResultsIfReady (TYPE_3__*) ;
 int ForgetResults (TYPE_3__*) ;
 int HandleRemoteTransactionConnectionError (TYPE_3__*,int const) ;
 int MarkRemoteTransactionFailed (TYPE_3__*,int const) ;
 scalar_t__ REMOTE_TRANS_1PC_ABORTING ;
 scalar_t__ REMOTE_TRANS_2PC_ABORTING ;
 scalar_t__ REMOTE_TRANS_INVALID ;
 scalar_t__ REMOTE_TRANS_PREPARED ;
 scalar_t__ REMOTE_TRANS_PREPARING ;
 int SendRemoteCommand (TYPE_3__*,char*) ;
 int ShutdownConnection (TYPE_3__*) ;
 int WarnAboutLeakedPreparedTransaction (TYPE_3__*,int const) ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int quote_literal_cstr (int ) ;

void
StartRemoteTransactionAbort(MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;
 const bool raiseErrors = 0;
 const bool isNotCommit = 0;

 Assert(transaction->transactionState != REMOTE_TRANS_INVALID);
 if (transaction->transactionState == REMOTE_TRANS_PREPARING ||
  transaction->transactionState == REMOTE_TRANS_PREPARED)
 {
  StringInfoData command;


  ForgetResults(connection);

  initStringInfo(&command);
  appendStringInfo(&command, "ROLLBACK PREPARED %s",
       quote_literal_cstr(transaction->preparedName));

  if (!SendRemoteCommand(connection, command.data))
  {
   HandleRemoteTransactionConnectionError(connection, raiseErrors);

   WarnAboutLeakedPreparedTransaction(connection, isNotCommit);
  }
  else
  {
   transaction->transactionState = REMOTE_TRANS_2PC_ABORTING;
  }
 }
 else
 {







  if (!ClearResultsIfReady(connection))
  {
   ShutdownConnection(connection);


   return;
  }

  if (!SendRemoteCommand(connection, "ROLLBACK"))
  {

   MarkRemoteTransactionFailed(connection, raiseErrors);
  }
  else
  {
   transaction->transactionState = REMOTE_TRANS_1PC_ABORTING;
  }
 }
}
