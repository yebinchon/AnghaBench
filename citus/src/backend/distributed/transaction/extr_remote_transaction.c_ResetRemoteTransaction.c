
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MultiConnection {int remoteTransaction; } ;
typedef int RemoteTransaction ;


 int memset (int *,int ,int) ;

void
ResetRemoteTransaction(struct MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;


 memset(transaction, 0, sizeof(*transaction));
}
