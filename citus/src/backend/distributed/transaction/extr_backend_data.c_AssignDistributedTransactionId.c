
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
typedef int pg_atomic_uint64 ;
typedef int TimestampTz ;
struct TYPE_6__ {int initiatorNodeIdentifier; int transactionOriginator; } ;
struct TYPE_5__ {int initiatorNodeIdentifier; int transactionOriginator; int timestamp; int transactionNumber; } ;
struct TYPE_8__ {int mutex; TYPE_2__ citusBackend; TYPE_1__ transactionId; int userId; int databaseId; } ;
struct TYPE_7__ {int nextTransactionNumber; } ;
typedef int Oid ;


 int GetCurrentTimestamp () ;
 int GetLocalGroupId () ;
 int GetUserId () ;
 TYPE_4__* MyBackendData ;
 int MyDatabaseId ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_3__* backendManagementShmemData ;
 int pg_atomic_fetch_add_u64 (int *,int) ;

void
AssignDistributedTransactionId(void)
{
 pg_atomic_uint64 *transactionNumberSequence =
  &backendManagementShmemData->nextTransactionNumber;

 uint64 nextTransactionNumber = pg_atomic_fetch_add_u64(transactionNumberSequence, 1);
 int localGroupId = GetLocalGroupId();
 TimestampTz currentTimestamp = GetCurrentTimestamp();
 Oid userId = GetUserId();

 SpinLockAcquire(&MyBackendData->mutex);

 MyBackendData->databaseId = MyDatabaseId;
 MyBackendData->userId = userId;

 MyBackendData->transactionId.initiatorNodeIdentifier = localGroupId;
 MyBackendData->transactionId.transactionOriginator = 1;
 MyBackendData->transactionId.transactionNumber = nextTransactionNumber;
 MyBackendData->transactionId.timestamp = currentTimestamp;

 MyBackendData->citusBackend.initiatorNodeIdentifier = localGroupId;
 MyBackendData->citusBackend.transactionOriginator = 1;

 SpinLockRelease(&MyBackendData->mutex);
}
