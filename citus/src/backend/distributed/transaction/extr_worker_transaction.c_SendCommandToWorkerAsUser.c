
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int int32 ;
typedef int MultiConnection ;


 int BeginOrContinueCoordinatedTransaction () ;
 int CoordinatedTransactionUse2PC () ;
 int ExecuteCriticalRemoteCommand (int *,char const*) ;
 int * GetNodeUserDatabaseConnection (int ,char*,int ,char const*,int *) ;
 int MarkRemoteTransactionCritical (int *) ;
 int RemoteTransactionBeginIfNecessary (int *) ;

void
SendCommandToWorkerAsUser(char *nodeName, int32 nodePort, const char *nodeUser,
        const char *command)
{
 MultiConnection *transactionConnection = ((void*)0);
 uint connectionFlags = 0;

 BeginOrContinueCoordinatedTransaction();
 CoordinatedTransactionUse2PC();

 transactionConnection = GetNodeUserDatabaseConnection(connectionFlags, nodeName,
                nodePort, nodeUser, ((void*)0));

 MarkRemoteTransactionCritical(transactionConnection);
 RemoteTransactionBeginIfNecessary(transactionConnection);
 ExecuteCriticalRemoteCommand(transactionConnection, command);
}
