#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ int64 ;
struct TYPE_13__ {TYPE_1__* currentTask; TYPE_3__* workerPool; TYPE_6__* connection; } ;
typedef  TYPE_2__ WorkerSession ;
struct TYPE_14__ {TYPE_8__* distributedExecution; } ;
typedef  TYPE_3__ WorkerPool ;
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  TYPE_4__* TupleDesc ;
struct TYPE_19__ {char** columnArray; scalar_t__ rowsProcessed; int /*<<< orphan*/ * tupleStore; int /*<<< orphan*/ * attributeInputMetadata; TYPE_4__* tupleDescriptor; TYPE_7__* executionStats; } ;
struct TYPE_18__ {int /*<<< orphan*/  totalIntermediateResultSize; } ;
struct TYPE_17__ {int /*<<< orphan*/  pgConn; } ;
struct TYPE_16__ {int /*<<< orphan*/  gotResults; } ;
struct TYPE_15__ {scalar_t__ natts; } ;
struct TYPE_12__ {TYPE_5__* shardCommandExecution; } ;
typedef  TYPE_5__ ShardCommandExecution ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_6__ MultiConnection ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  scalar_t__ ExecStatusType ;
typedef  TYPE_7__ DistributedExecutionStats ;
typedef  TYPE_8__ DistributedExecution ;
typedef  int /*<<< orphan*/  AttInMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_INITSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MAXSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MINSIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_SINGLE_TUPLE ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 char* FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SubPlanLevel ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char**,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC24(WorkerSession *session, bool storeRows)
{
	bool fetchDone = false;
	MultiConnection *connection = session->connection;
	WorkerPool *workerPool = session->workerPool;
	DistributedExecution *execution = workerPool->distributedExecution;
	DistributedExecutionStats *executionStats = execution->executionStats;
	TupleDesc tupleDescriptor = execution->tupleDescriptor;
	AttInMetadata *attributeInputMetadata = execution->attributeInputMetadata;
	uint32 expectedColumnCount = 0;
	char **columnArray = execution->columnArray;
	Tuplestorestate *tupleStore = execution->tupleStore;
	MemoryContext ioContext = NULL;

	if (tupleDescriptor != NULL)
	{
		expectedColumnCount = tupleDescriptor->natts;
	}

	/*
	 * We use this context while converting each row fetched from remote node
	 * into tuple. The context is reseted on every row, thus we create it at the
	 * start of the loop and reset on every iteration.
	 */
	ioContext = FUNC0(CurrentMemoryContext,
									  "IoContext",
									  ALLOCSET_DEFAULT_MINSIZE,
									  ALLOCSET_DEFAULT_INITSIZE,
									  ALLOCSET_DEFAULT_MAXSIZE);

	while (!FUNC14(connection->pgConn))
	{
		uint32 rowIndex = 0;
		uint32 columnIndex = 0;
		uint32 rowsProcessed = 0;
		uint32 columnCount = 0;
		ExecStatusType resultStatus = 0;

		PGresult *result = FUNC10(connection->pgConn);
		if (result == NULL)
		{
			/* no more results, break out of loop and free allocated memory */
			fetchDone = true;
			break;
		}

		resultStatus = FUNC17(result);
		if (resultStatus == PGRES_COMMAND_OK)
		{
			char *currentAffectedTupleString = FUNC9(result);
			int64 currentAffectedTupleCount = 0;
			ShardCommandExecution *shardCommandExecution =
				session->currentTask->shardCommandExecution;

			/* if there are multiple replicas, make sure to consider only one */
			if (!shardCommandExecution->gotResults && *currentAffectedTupleString != '\0')
			{
				FUNC22(currentAffectedTupleString, false, &currentAffectedTupleCount);
				FUNC1(currentAffectedTupleCount >= 0);

				execution->rowsProcessed += currentAffectedTupleCount;
			}

			FUNC8(result);

			/* no more results, break out of loop and free allocated memory */
			fetchDone = true;
			break;
		}
		else if (resultStatus == PGRES_TUPLES_OK)
		{
			/*
			 * We've already consumed all the tuples, no more results. Break out
			 * of loop and free allocated memory before returning.
			 */
			FUNC1(FUNC16(result) == 0);
			FUNC8(result);

			fetchDone = true;
			break;
		}
		else if (resultStatus != PGRES_SINGLE_TUPLE)
		{
			/* query failures are always hard errors */
			FUNC18(connection, result, ERROR);
		}
		else if (!storeRows)
		{
			/*
			 * Already receieved rows from executing on another shard placement or
			 * doesn't need at all (e.g., DDL).
			 */
			FUNC8(result);
			continue;
		}

		rowsProcessed = FUNC16(result);
		columnCount = FUNC15(result);

		if (columnCount != expectedColumnCount)
		{
			FUNC19(ERROR, (FUNC20("unexpected number of columns from worker: %d, "
								   "expected %d",
								   columnCount, expectedColumnCount)));
		}

		for (rowIndex = 0; rowIndex < rowsProcessed; rowIndex++)
		{
			HeapTuple heapTuple = NULL;
			MemoryContext oldContextPerRow = NULL;
			FUNC21(columnArray, 0, columnCount * sizeof(char *));

			for (columnIndex = 0; columnIndex < columnCount; columnIndex++)
			{
				if (FUNC11(result, rowIndex, columnIndex))
				{
					columnArray[columnIndex] = NULL;
				}
				else
				{
					columnArray[columnIndex] = FUNC13(result, rowIndex, columnIndex);
					if (SubPlanLevel > 0 && executionStats != NULL)
					{
						executionStats->totalIntermediateResultSize += FUNC12(result,
																				   rowIndex,
																				   columnIndex);
					}
				}
			}

			/*
			 * Switch to a temporary memory context that we reset after each tuple. This
			 * protects us from any memory leaks that might be present in I/O functions
			 * called by BuildTupleFromCStrings.
			 */
			oldContextPerRow = FUNC7(ioContext);

			heapTuple = FUNC2(attributeInputMetadata, columnArray);

			FUNC7(oldContextPerRow);

			FUNC23(tupleStore, heapTuple);
			FUNC6(ioContext);

			execution->rowsProcessed++;
		}

		FUNC8(result);

		if (executionStats != NULL && FUNC3(executionStats))
		{
			FUNC4();
		}
	}

	/* the context is local to the function, so not needed anymore */
	FUNC5(ioContext);

	return fetchDone;
}