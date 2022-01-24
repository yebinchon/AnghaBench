#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * shardStateHash; int /*<<< orphan*/  tuplesSent; } ;
struct TYPE_6__ {int /*<<< orphan*/  es_processed; int /*<<< orphan*/  es_param_list_info; } ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ EState ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_2__ CitusCopyDestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*,int,char*) ; 
 char DISTRIBUTE_BY_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XACT_MODIFICATION_DATA ; 
 int /*<<< orphan*/  XactModificationLevel ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HTAB *
FUNC6(Oid targetRelationId,
											  List *insertTargetList,
											  Query *selectQuery, EState *executorState,
											  char *intermediateResultIdPrefix)
{
	ParamListInfo paramListInfo = executorState->es_param_list_info;
	int partitionColumnIndex = -1;
	List *columnNameList = NIL;
	bool stopOnFailure = false;
	char partitionMethod = 0;
	CitusCopyDestReceiver *copyDest = NULL;
	Query *queryCopy = NULL;

	partitionMethod = FUNC4(targetRelationId);
	if (partitionMethod == DISTRIBUTE_BY_NONE)
	{
		stopOnFailure = true;
	}

	/* Get column name list and partition column index for the target table */
	columnNameList = FUNC0(targetRelationId,
													   insertTargetList);
	partitionColumnIndex = FUNC3(targetRelationId,
															  columnNameList);

	/* set up a DestReceiver that copies into the intermediate table */
	copyDest = FUNC1(targetRelationId, columnNameList,
										   partitionColumnIndex, executorState,
										   stopOnFailure, intermediateResultIdPrefix);

	/*
	 * Make a copy of the query, since ExecuteQueryIntoDestReceiver may scribble on it
	 * and we want it to be replanned every time if it is stored in a prepared
	 * statement.
	 */
	queryCopy = FUNC5(selectQuery);

	FUNC2(queryCopy, paramListInfo, (DestReceiver *) copyDest);

	executorState->es_processed = copyDest->tuplesSent;

	XactModificationLevel = XACT_MODIFICATION_DATA;

	return copyDest->shardStateHash;
}