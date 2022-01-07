
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MultiConnection {int dummy; } ;


 int FinishRemoteTransactionPrepare (struct MultiConnection*) ;
 int StartRemoteTransactionPrepare (struct MultiConnection*) ;

void
RemoteTransactionPrepare(struct MultiConnection *connection)
{
 StartRemoteTransactionPrepare(connection);
 FinishRemoteTransactionPrepare(connection);
}
