
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MultiConnection {int dummy; } ;


 int FinishRemoteTransactionBegin (struct MultiConnection*) ;
 int StartRemoteTransactionBegin (struct MultiConnection*) ;

void
RemoteTransactionBegin(struct MultiConnection *connection)
{
 StartRemoteTransactionBegin(connection);
 FinishRemoteTransactionBegin(connection);
}
