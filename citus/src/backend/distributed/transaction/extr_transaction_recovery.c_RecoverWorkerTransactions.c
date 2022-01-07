
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64 ;
typedef int int32 ;
struct TYPE_11__ {char* workerName; int workerPort; int groupId; } ;
typedef TYPE_1__ WorkerNode ;
typedef int * TupleDesc ;
struct TYPE_13__ {int t_self; } ;
struct TYPE_12__ {int * pgConn; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_2__ MultiConnection ;
typedef int * MemoryContext ;
typedef int List ;
typedef TYPE_3__* HeapTuple ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_INITSIZE ;
 int ALLOCSET_DEFAULT_MAXSIZE ;
 int ALLOCSET_DEFAULT_MINSIZE ;
 int * ActiveDistributedTransactionNumbers () ;
 int * AllocSetContextCreateExtended (int ,char*,int ,int ,int ) ;
 int Anum_pg_dist_transaction_gid ;
 int Anum_pg_dist_transaction_groupid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONNECTION_OK ;
 int CurrentMemoryContext ;
 int DistTransactionGroupIndexId () ;
 int DistTransactionRelationId () ;
 int F_INT4EQ ;
 TYPE_2__* GetNodeConnection (int,char*,int) ;
 int HASH_FIND ;
 int HASH_REMOVE ;
 scalar_t__ HeapTupleIsValid (TYPE_3__*) ;
 int Int32GetDatum (int ) ;
 int IsTransactionInProgress (int *,char*) ;
 int * ListToHashSet (int *,int,int) ;
 int MemoryContextDelete (int *) ;
 int * MemoryContextSwitchTo (int *) ;
 int NAMEDATALEN ;
 int * NIL ;
 int NoLock ;
 scalar_t__ PQstatus (int *) ;
 int * PendingWorkerTransactionList (TYPE_2__*) ;
 int RecoverPreparedTransactionOnWorker (TYPE_2__*,char*,int) ;
 int * RelationGetDescr (int *) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ShareUpdateExclusiveLock ;
 char* TextDatumGetCString (int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*,int) ;
 int hash_search (int *,char*,int ,int*) ;
 int hash_seq_init (int *,int *) ;
 char* hash_seq_search (int *) ;
 int hash_seq_term (int *) ;
 int heap_close (int *,int ) ;
 int heap_getattr (TYPE_3__*,int ,int *,int*) ;
 int * heap_open (int ,int ) ;
 int simple_heap_delete (int *,int *) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 TYPE_3__* systable_getnext (int *) ;

__attribute__((used)) static int
RecoverWorkerTransactions(WorkerNode *workerNode)
{
 int recoveredTransactionCount = 0;

 int32 groupId = workerNode->groupId;
 char *nodeName = workerNode->workerName;
 int nodePort = workerNode->workerPort;

 List *activeTransactionNumberList = NIL;
 HTAB *activeTransactionNumberSet = ((void*)0);

 List *pendingTransactionList = NIL;
 HTAB *pendingTransactionSet = ((void*)0);
 List *recheckTransactionList = NIL;
 HTAB *recheckTransactionSet = ((void*)0);

 Relation pgDistTransaction = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 bool indexOK = 1;
 HeapTuple heapTuple = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);

 HASH_SEQ_STATUS status;

 MemoryContext localContext = ((void*)0);
 MemoryContext oldContext = ((void*)0);
 bool recoveryFailed = 0;

 int connectionFlags = 0;
 MultiConnection *connection = GetNodeConnection(connectionFlags, nodeName, nodePort);
 if (connection->pgConn == ((void*)0) || PQstatus(connection->pgConn) != CONNECTION_OK)
 {
  ereport(WARNING, (errmsg("transaction recovery cannot connect to %s:%d",
         nodeName, nodePort)));

  return 0;
 }

 localContext = AllocSetContextCreateExtended(CurrentMemoryContext,
             "RecoverWorkerTransactions",
             ALLOCSET_DEFAULT_MINSIZE,
             ALLOCSET_DEFAULT_INITSIZE,
             ALLOCSET_DEFAULT_MAXSIZE);

 oldContext = MemoryContextSwitchTo(localContext);


 pgDistTransaction = heap_open(DistTransactionRelationId(), ShareUpdateExclusiveLock);
 tupleDescriptor = RelationGetDescr(pgDistTransaction);
 pendingTransactionList = PendingWorkerTransactionList(connection);
 pendingTransactionSet = ListToHashSet(pendingTransactionList, NAMEDATALEN, 1);


 activeTransactionNumberList = ActiveDistributedTransactionNumbers();
 activeTransactionNumberSet = ListToHashSet(activeTransactionNumberList,
              sizeof(uint64), 0);


 ScanKeyInit(&scanKey[0], Anum_pg_dist_transaction_groupid,
    BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(groupId));


 scanDescriptor = systable_beginscan(pgDistTransaction,
          DistTransactionGroupIndexId(), indexOK,
          ((void*)0), scanKeyCount, scanKey);


 recheckTransactionList = PendingWorkerTransactionList(connection);
 recheckTransactionSet = ListToHashSet(recheckTransactionList, NAMEDATALEN, 1);

 while (HeapTupleIsValid(heapTuple = systable_getnext(scanDescriptor)))
 {
  bool isNull = 0;
  bool isTransactionInProgress = 0;
  bool foundPreparedTransactionBeforeCommit = 0;
  bool foundPreparedTransactionAfterCommit = 0;

  Datum transactionNameDatum = heap_getattr(heapTuple,
              Anum_pg_dist_transaction_gid,
              tupleDescriptor, &isNull);
  char *transactionName = TextDatumGetCString(transactionNameDatum);

  isTransactionInProgress = IsTransactionInProgress(activeTransactionNumberSet,
                transactionName);
  if (isTransactionInProgress)
  {





   continue;
  }





  hash_search(pendingTransactionSet, transactionName, HASH_REMOVE,
     &foundPreparedTransactionBeforeCommit);

  hash_search(recheckTransactionSet, transactionName, HASH_FIND,
     &foundPreparedTransactionAfterCommit);

  if (foundPreparedTransactionBeforeCommit && foundPreparedTransactionAfterCommit)
  {
   bool shouldCommit = 1;
   bool commitSucceeded = RecoverPreparedTransactionOnWorker(connection,
                   transactionName,
                   shouldCommit);
   if (!commitSucceeded)
   {





    recoveryFailed = 1;
    break;
   }

   recoveredTransactionCount++;





  }
  else if (foundPreparedTransactionAfterCommit)
  {
   continue;
  }
  else
  {
  }

  simple_heap_delete(pgDistTransaction, &heapTuple->t_self);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistTransaction, NoLock);

 if (!recoveryFailed)
 {
  char *pendingTransactionName = ((void*)0);
  bool abortSucceeded = 1;






  hash_seq_init(&status, pendingTransactionSet);

  while ((pendingTransactionName = hash_seq_search(&status)) != ((void*)0))
  {
   bool isTransactionInProgress = 0;
   bool shouldCommit = 0;

   isTransactionInProgress = IsTransactionInProgress(activeTransactionNumberSet,
                 pendingTransactionName);
   if (isTransactionInProgress)
   {
    continue;
   }

   shouldCommit = 0;
   abortSucceeded = RecoverPreparedTransactionOnWorker(connection,
                pendingTransactionName,
                shouldCommit);
   if (!abortSucceeded)
   {
    hash_seq_term(&status);
    break;
   }

   recoveredTransactionCount++;
  }
 }

 MemoryContextSwitchTo(oldContext);
 MemoryContextDelete(localContext);

 return recoveredTransactionCount;
}
