
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ int64 ;
struct TYPE_13__ {TYPE_1__* currentTask; TYPE_3__* workerPool; TYPE_6__* connection; } ;
typedef TYPE_2__ WorkerSession ;
struct TYPE_14__ {TYPE_8__* distributedExecution; } ;
typedef TYPE_3__ WorkerPool ;
typedef int Tuplestorestate ;
typedef TYPE_4__* TupleDesc ;
struct TYPE_19__ {char** columnArray; scalar_t__ rowsProcessed; int * tupleStore; int * attributeInputMetadata; TYPE_4__* tupleDescriptor; TYPE_7__* executionStats; } ;
struct TYPE_18__ {int totalIntermediateResultSize; } ;
struct TYPE_17__ {int pgConn; } ;
struct TYPE_16__ {int gotResults; } ;
struct TYPE_15__ {scalar_t__ natts; } ;
struct TYPE_12__ {TYPE_5__* shardCommandExecution; } ;
typedef TYPE_5__ ShardCommandExecution ;
typedef int PGresult ;
typedef TYPE_6__ MultiConnection ;
typedef int * MemoryContext ;
typedef int * HeapTuple ;
typedef scalar_t__ ExecStatusType ;
typedef TYPE_7__ DistributedExecutionStats ;
typedef TYPE_8__ DistributedExecution ;
typedef int AttInMetadata ;


 int ALLOCSET_DEFAULT_INITSIZE ;
 int ALLOCSET_DEFAULT_MAXSIZE ;
 int ALLOCSET_DEFAULT_MINSIZE ;
 int * AllocSetContextCreate (int ,char*,int ,int ,int ) ;
 int Assert (int) ;
 int * BuildTupleFromCStrings (int *,char**) ;
 scalar_t__ CheckIfSizeLimitIsExceeded (TYPE_7__*) ;
 int CurrentMemoryContext ;
 int ERROR ;
 int ErrorSizeLimitIsExceeded () ;
 int MemoryContextDelete (int *) ;
 int MemoryContextReset (int *) ;
 int * MemoryContextSwitchTo (int *) ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_SINGLE_TUPLE ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 char* PQcmdTuples (int *) ;
 int * PQgetResult (int ) ;
 scalar_t__ PQgetisnull (int *,scalar_t__,scalar_t__) ;
 scalar_t__ PQgetlength (int *,scalar_t__,scalar_t__) ;
 char* PQgetvalue (int *,scalar_t__,scalar_t__) ;
 int PQisBusy (int ) ;
 scalar_t__ PQnfields (int *) ;
 scalar_t__ PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReportResultError (TYPE_6__*,int *,int ) ;
 scalar_t__ SubPlanLevel ;
 int ereport (int ,int ) ;
 int errmsg (char*,scalar_t__,scalar_t__) ;
 int memset (char**,int ,scalar_t__) ;
 int scanint8 (char*,int,scalar_t__*) ;
 int tuplestore_puttuple (int *,int *) ;

__attribute__((used)) static bool
ReceiveResults(WorkerSession *session, bool storeRows)
{
 bool fetchDone = 0;
 MultiConnection *connection = session->connection;
 WorkerPool *workerPool = session->workerPool;
 DistributedExecution *execution = workerPool->distributedExecution;
 DistributedExecutionStats *executionStats = execution->executionStats;
 TupleDesc tupleDescriptor = execution->tupleDescriptor;
 AttInMetadata *attributeInputMetadata = execution->attributeInputMetadata;
 uint32 expectedColumnCount = 0;
 char **columnArray = execution->columnArray;
 Tuplestorestate *tupleStore = execution->tupleStore;
 MemoryContext ioContext = ((void*)0);

 if (tupleDescriptor != ((void*)0))
 {
  expectedColumnCount = tupleDescriptor->natts;
 }






 ioContext = AllocSetContextCreate(CurrentMemoryContext,
           "IoContext",
           ALLOCSET_DEFAULT_MINSIZE,
           ALLOCSET_DEFAULT_INITSIZE,
           ALLOCSET_DEFAULT_MAXSIZE);

 while (!PQisBusy(connection->pgConn))
 {
  uint32 rowIndex = 0;
  uint32 columnIndex = 0;
  uint32 rowsProcessed = 0;
  uint32 columnCount = 0;
  ExecStatusType resultStatus = 0;

  PGresult *result = PQgetResult(connection->pgConn);
  if (result == ((void*)0))
  {

   fetchDone = 1;
   break;
  }

  resultStatus = PQresultStatus(result);
  if (resultStatus == PGRES_COMMAND_OK)
  {
   char *currentAffectedTupleString = PQcmdTuples(result);
   int64 currentAffectedTupleCount = 0;
   ShardCommandExecution *shardCommandExecution =
    session->currentTask->shardCommandExecution;


   if (!shardCommandExecution->gotResults && *currentAffectedTupleString != '\0')
   {
    scanint8(currentAffectedTupleString, 0, &currentAffectedTupleCount);
    Assert(currentAffectedTupleCount >= 0);

    execution->rowsProcessed += currentAffectedTupleCount;
   }

   PQclear(result);


   fetchDone = 1;
   break;
  }
  else if (resultStatus == PGRES_TUPLES_OK)
  {




   Assert(PQntuples(result) == 0);
   PQclear(result);

   fetchDone = 1;
   break;
  }
  else if (resultStatus != PGRES_SINGLE_TUPLE)
  {

   ReportResultError(connection, result, ERROR);
  }
  else if (!storeRows)
  {




   PQclear(result);
   continue;
  }

  rowsProcessed = PQntuples(result);
  columnCount = PQnfields(result);

  if (columnCount != expectedColumnCount)
  {
   ereport(ERROR, (errmsg("unexpected number of columns from worker: %d, "
           "expected %d",
           columnCount, expectedColumnCount)));
  }

  for (rowIndex = 0; rowIndex < rowsProcessed; rowIndex++)
  {
   HeapTuple heapTuple = ((void*)0);
   MemoryContext oldContextPerRow = ((void*)0);
   memset(columnArray, 0, columnCount * sizeof(char *));

   for (columnIndex = 0; columnIndex < columnCount; columnIndex++)
   {
    if (PQgetisnull(result, rowIndex, columnIndex))
    {
     columnArray[columnIndex] = ((void*)0);
    }
    else
    {
     columnArray[columnIndex] = PQgetvalue(result, rowIndex, columnIndex);
     if (SubPlanLevel > 0 && executionStats != ((void*)0))
     {
      executionStats->totalIntermediateResultSize += PQgetlength(result,
                       rowIndex,
                       columnIndex);
     }
    }
   }






   oldContextPerRow = MemoryContextSwitchTo(ioContext);

   heapTuple = BuildTupleFromCStrings(attributeInputMetadata, columnArray);

   MemoryContextSwitchTo(oldContextPerRow);

   tuplestore_puttuple(tupleStore, heapTuple);
   MemoryContextReset(ioContext);

   execution->rowsProcessed++;
  }

  PQclear(result);

  if (executionStats != ((void*)0) && CheckIfSizeLimitIsExceeded(executionStats))
  {
   ErrorSizeLimitIsExceeded();
  }
 }


 MemoryContextDelete(ioContext);

 return fetchDone;
}
