
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int transactionRecovering; int transactionFailed; int transactionState; } ;
struct TYPE_8__ {TYPE_1__ remoteTransaction; } ;
typedef int SubTransactionId ;
typedef TYPE_1__ RemoteTransaction ;
typedef int PGresult ;
typedef TYPE_2__ MultiConnection ;


 int ForgetResults (TYPE_2__*) ;
 int * GetRemoteCommandResult (TYPE_2__*,int const) ;
 int HandleRemoteTransactionResultError (TYPE_2__*,int *,int const) ;
 int IsResponseOK (int *) ;
 int PQclear (int *) ;
 int REMOTE_TRANS_STARTED ;

__attribute__((used)) static void
FinishRemoteTransactionSavepointRollback(MultiConnection *connection, SubTransactionId
           subId)
{
 const bool raiseErrors = 0;
 RemoteTransaction *transaction = &connection->remoteTransaction;

 PGresult *result = GetRemoteCommandResult(connection, raiseErrors);
 if (!IsResponseOK(result))
 {
  HandleRemoteTransactionResultError(connection, result, raiseErrors);
 }


 else if (transaction->transactionRecovering)
 {
  transaction->transactionFailed = 0;
  transaction->transactionRecovering = 0;
 }

 PQclear(result);
 ForgetResults(connection);


 transaction->transactionState = REMOTE_TRANS_STARTED;
}
