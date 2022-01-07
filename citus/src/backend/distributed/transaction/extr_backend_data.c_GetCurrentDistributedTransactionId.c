
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int timestamp; int transactionNumber; int transactionOriginator; int initiatorNodeIdentifier; } ;
struct TYPE_8__ {TYPE_1__ transactionId; } ;
struct TYPE_7__ {int timestamp; int transactionNumber; int transactionOriginator; int initiatorNodeIdentifier; } ;
typedef TYPE_2__ DistributedTransactionId ;
typedef TYPE_3__ BackendData ;


 int GetBackendDataForProc (int ,TYPE_3__*) ;
 int MyProc ;
 scalar_t__ palloc (int) ;

DistributedTransactionId *
GetCurrentDistributedTransactionId(void)
{
 DistributedTransactionId *currentDistributedTransactionId =
  (DistributedTransactionId *) palloc(sizeof(DistributedTransactionId));
 BackendData backendData;

 GetBackendDataForProc(MyProc, &backendData);

 currentDistributedTransactionId->initiatorNodeIdentifier =
  backendData.transactionId.initiatorNodeIdentifier;
 currentDistributedTransactionId->transactionOriginator =
  backendData.transactionId.transactionOriginator;
 currentDistributedTransactionId->transactionNumber =
  backendData.transactionId.transactionNumber;
 currentDistributedTransactionId->timestamp =
  backendData.transactionId.timestamp;

 return currentDistributedTransactionId;
}
