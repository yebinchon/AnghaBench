
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transactionCritical; } ;
struct MultiConnection {TYPE_1__ remoteTransaction; } ;
typedef TYPE_1__ RemoteTransaction ;



void
MarkRemoteTransactionCritical(struct MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;

 transaction->transactionCritical = 1;
}
