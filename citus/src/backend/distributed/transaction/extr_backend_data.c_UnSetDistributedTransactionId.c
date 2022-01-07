
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int initiatorNodeIdentifier; int transactionOriginator; } ;
struct TYPE_4__ {int transactionOriginator; scalar_t__ timestamp; scalar_t__ transactionNumber; scalar_t__ initiatorNodeIdentifier; } ;
struct TYPE_6__ {int mutex; TYPE_2__ citusBackend; TYPE_1__ transactionId; scalar_t__ userId; scalar_t__ databaseId; } ;


 TYPE_3__* MyBackendData ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
UnSetDistributedTransactionId(void)
{

 if (MyBackendData)
 {
  SpinLockAcquire(&MyBackendData->mutex);

  MyBackendData->databaseId = 0;
  MyBackendData->userId = 0;
  MyBackendData->transactionId.initiatorNodeIdentifier = 0;
  MyBackendData->transactionId.transactionOriginator = 0;
  MyBackendData->transactionId.transactionNumber = 0;
  MyBackendData->transactionId.timestamp = 0;

  MyBackendData->citusBackend.initiatorNodeIdentifier = -1;
  MyBackendData->citusBackend.transactionOriginator = 0;

  SpinLockRelease(&MyBackendData->mutex);
 }
}
