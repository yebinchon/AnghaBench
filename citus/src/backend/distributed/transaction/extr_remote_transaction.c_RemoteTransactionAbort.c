
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiConnection ;


 int FinishRemoteTransactionAbort (int *) ;
 int StartRemoteTransactionAbort (int *) ;

void
RemoteTransactionAbort(MultiConnection *connection)
{
 StartRemoteTransactionAbort(connection);
 FinishRemoteTransactionAbort(connection);
}
