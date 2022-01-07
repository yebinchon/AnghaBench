
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int transactionFailed; scalar_t__ transactionCritical; } ;
struct TYPE_5__ {int port; int hostname; TYPE_1__ remoteTransaction; } ;
typedef TYPE_1__ RemoteTransaction ;
typedef TYPE_2__ MultiConnection ;


 int ERROR ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ) ;

void
MarkRemoteTransactionFailed(MultiConnection *connection, bool allowErrorPromotion)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;

 transaction->transactionFailed = 1;





 if (transaction->transactionCritical && allowErrorPromotion)
 {
  ereport(ERROR, (errmsg("failure on connection marked as essential: %s:%d",
          connection->hostname, connection->port)));
 }
}
