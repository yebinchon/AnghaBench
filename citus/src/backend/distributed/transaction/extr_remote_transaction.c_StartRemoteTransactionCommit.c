
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ transactionState; int preparedName; scalar_t__ transactionFailed; } ;
struct TYPE_13__ {TYPE_2__ remoteTransaction; } ;
struct TYPE_11__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ RemoteTransaction ;
typedef TYPE_3__ MultiConnection ;


 int Assert (int) ;
 int ForgetResults (TYPE_3__*) ;
 int HandleRemoteTransactionConnectionError (TYPE_3__*,int const) ;
 scalar_t__ REMOTE_TRANS_1PC_ABORTING ;
 scalar_t__ REMOTE_TRANS_1PC_COMMITTING ;
 scalar_t__ REMOTE_TRANS_2PC_COMMITTING ;
 scalar_t__ REMOTE_TRANS_INVALID ;
 scalar_t__ REMOTE_TRANS_PREPARED ;
 int SendRemoteCommand (TYPE_3__*,char*) ;
 int WarnAboutLeakedPreparedTransaction (TYPE_3__*,int const) ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int quote_literal_cstr (int ) ;

void
StartRemoteTransactionCommit(MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;
 const bool raiseErrors = 0;
 const bool isCommit = 1;


 Assert(transaction->transactionState != REMOTE_TRANS_INVALID);


 Assert(transaction->transactionState < REMOTE_TRANS_1PC_ABORTING);

 if (transaction->transactionFailed)
 {

  transaction->transactionState = REMOTE_TRANS_1PC_ABORTING;






  ForgetResults(connection);
  if (!SendRemoteCommand(connection, "ROLLBACK"))
  {

  }
 }
 else if (transaction->transactionState == REMOTE_TRANS_PREPARED)
 {

  StringInfoData command;

  initStringInfo(&command);
  appendStringInfo(&command, "COMMIT PREPARED %s",
       quote_literal_cstr(transaction->preparedName));

  transaction->transactionState = REMOTE_TRANS_2PC_COMMITTING;

  if (!SendRemoteCommand(connection, command.data))
  {
   HandleRemoteTransactionConnectionError(connection, raiseErrors);

   WarnAboutLeakedPreparedTransaction(connection, isCommit);
  }
 }
 else
 {

  transaction->transactionState = REMOTE_TRANS_1PC_COMMITTING;

  if (!SendRemoteCommand(connection, "COMMIT"))
  {






   HandleRemoteTransactionConnectionError(connection, raiseErrors);
  }
 }
}
