
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiConnection ;


 int FinishRemoteTransactionCommit (int *) ;
 int StartRemoteTransactionCommit (int *) ;

void
RemoteTransactionCommit(MultiConnection *connection)
{
 StartRemoteTransactionCommit(connection);
 FinishRemoteTransactionCommit(connection);
}
