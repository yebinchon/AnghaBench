
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int values ;
typedef int uint64 ;
typedef int isNulls ;
typedef int Tuplestorestate ;
typedef int TupleDesc ;
typedef int TimestampTz ;
struct TYPE_12__ {TYPE_1__* allProcs; } ;
struct TYPE_11__ {TYPE_4__* backends; } ;
struct TYPE_9__ {int timestamp; int transactionNumber; } ;
struct TYPE_8__ {int initiatorNodeIdentifier; int transactionOriginator; } ;
struct TYPE_10__ {scalar_t__ const userId; scalar_t__ databaseId; int mutex; TYPE_3__ transactionId; TYPE_2__ citusBackend; } ;
struct TYPE_7__ {int pid; } ;
typedef scalar_t__ Oid ;
typedef int Datum ;
typedef TYPE_4__ BackendData ;


 int ACTIVE_TRANSACTION_COLUMN_COUNT ;
 int DEFAULT_ROLE_MONITOR ;
 scalar_t__ GetUserId () ;
 int Int32GetDatum (int) ;
 scalar_t__ InvalidOid ;
 int LW_SHARED ;
 int LockBackendSharedMemory (int ) ;
 int MaxBackends ;
 int ObjectIdGetDatum (scalar_t__) ;
 TYPE_6__* ProcGlobal ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TimestampTzGetDatum (int ) ;
 int UInt64GetDatum (int ) ;
 int UnlockBackendSharedMemory () ;
 TYPE_5__* backendManagementShmemData ;
 scalar_t__ is_member_of_role (scalar_t__ const,int ) ;
 int memset (int*,int,int) ;
 int superuser () ;
 int tuplestore_putvalues (int *,int ,int*,int*) ;

__attribute__((used)) static void
StoreAllActiveTransactions(Tuplestorestate *tupleStore, TupleDesc tupleDescriptor)
{
 int backendIndex = 0;
 Datum values[ACTIVE_TRANSACTION_COLUMN_COUNT];
 bool isNulls[ACTIVE_TRANSACTION_COLUMN_COUNT];
 bool showAllTransactions = superuser();
 const Oid userId = GetUserId();






 memset(values, 0, sizeof(values));
 memset(isNulls, 0, sizeof(isNulls));

 if (is_member_of_role(userId, DEFAULT_ROLE_MONITOR))
 {
  showAllTransactions = 1;
 }


 LockBackendSharedMemory(LW_SHARED);

 for (backendIndex = 0; backendIndex < MaxBackends; ++backendIndex)
 {
  BackendData *currentBackend =
   &backendManagementShmemData->backends[backendIndex];
  bool coordinatorOriginatedQuery = 0;


  Oid databaseId = InvalidOid;
  int backendPid = -1;
  int initiatorNodeIdentifier = -1;
  uint64 transactionNumber = 0;
  TimestampTz transactionIdTimestamp = 0;

  SpinLockAcquire(&currentBackend->mutex);


  if (currentBackend->citusBackend.initiatorNodeIdentifier < 0)
  {
   SpinLockRelease(&currentBackend->mutex);
   continue;
  }





  if (!showAllTransactions && currentBackend->userId != userId)
  {
   SpinLockRelease(&currentBackend->mutex);
   continue;
  }

  databaseId = currentBackend->databaseId;
  backendPid = ProcGlobal->allProcs[backendIndex].pid;
  initiatorNodeIdentifier = currentBackend->citusBackend.initiatorNodeIdentifier;
  coordinatorOriginatedQuery = currentBackend->citusBackend.transactionOriginator;

  transactionNumber = currentBackend->transactionId.transactionNumber;
  transactionIdTimestamp = currentBackend->transactionId.timestamp;

  SpinLockRelease(&currentBackend->mutex);

  values[0] = ObjectIdGetDatum(databaseId);
  values[1] = Int32GetDatum(backendPid);
  values[2] = Int32GetDatum(initiatorNodeIdentifier);
  values[3] = !coordinatorOriginatedQuery;
  values[4] = UInt64GetDatum(transactionNumber);
  values[5] = TimestampTzGetDatum(transactionIdTimestamp);

  tuplestore_putvalues(tupleStore, tupleDescriptor, values, isNulls);






  memset(values, 0, sizeof(values));
  memset(isNulls, 0, sizeof(isNulls));
 }

 UnlockBackendSharedMemory();
}
