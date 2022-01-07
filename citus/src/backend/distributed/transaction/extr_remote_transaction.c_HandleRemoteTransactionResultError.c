
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int transactionFailed; scalar_t__ transactionCritical; } ;
struct TYPE_6__ {TYPE_1__ remoteTransaction; } ;
typedef TYPE_1__ RemoteTransaction ;
typedef int PGresult ;
typedef TYPE_2__ MultiConnection ;


 int ERROR ;
 int ReportResultError (TYPE_2__*,int *,int ) ;
 int WARNING ;

void
HandleRemoteTransactionResultError(MultiConnection *connection, PGresult *result, bool
           raiseErrors)
{
 RemoteTransaction *transaction = &connection->remoteTransaction;

 transaction->transactionFailed = 1;

 if (transaction->transactionCritical && raiseErrors)
 {
  ReportResultError(connection, result, ERROR);
 }
 else
 {
  ReportResultError(connection, result, WARNING);
 }
}
