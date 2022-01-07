
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ transactionState; } ;
struct MultiConnection {int transactionNode; TYPE_1__ remoteTransaction; } ;
typedef TYPE_1__ RemoteTransaction ;


 scalar_t__ REMOTE_TRANS_INVALID ;
 int dlist_delete (int *) ;

void
CloseRemoteTransaction(struct MultiConnection *connection)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;


 if (transaction->transactionState != REMOTE_TRANS_INVALID)
 {


  dlist_delete(&connection->transactionNode);
 }
}
