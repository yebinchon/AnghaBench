#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* tts_isnull; int /*<<< orphan*/ * tts_values; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_9__ {int /*<<< orphan*/  fe_msgbuf; } ;
struct TYPE_8__ {int /*<<< orphan*/  tuplesSent; int /*<<< orphan*/  fileCompat; scalar_t__ writeLocalFile; int /*<<< orphan*/ * executorState; int /*<<< orphan*/ * columnOutputFunctions; TYPE_3__* copyOutState; int /*<<< orphan*/ * connectionList; int /*<<< orphan*/  tupleDescriptor; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ RemoteFileDestReceiver ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__* CopyOutState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC8(TupleTableSlot *slot, DestReceiver *dest)
{
	RemoteFileDestReceiver *resultDest = (RemoteFileDestReceiver *) dest;

	TupleDesc tupleDescriptor = resultDest->tupleDescriptor;

	List *connectionList = resultDest->connectionList;
	CopyOutState copyOutState = resultDest->copyOutState;
	FmgrInfo *columnOutputFunctions = resultDest->columnOutputFunctions;

	Datum *columnValues = NULL;
	bool *columnNulls = NULL;
	StringInfo copyData = copyOutState->fe_msgbuf;

	EState *executorState = resultDest->executorState;
	MemoryContext executorTupleContext = FUNC2(executorState);
	MemoryContext oldContext = FUNC3(executorTupleContext);

	FUNC7(slot);

	columnValues = slot->tts_values;
	columnNulls = slot->tts_isnull;

	FUNC6(copyData);

	/* construct row in COPY format */
	FUNC0(columnValues, columnNulls, tupleDescriptor,
					  copyOutState, columnOutputFunctions, NULL);

	/* send row to nodes */
	FUNC1(copyData, connectionList);

	/* write to local file (if applicable) */
	if (resultDest->writeLocalFile)
	{
		FUNC5(copyOutState->fe_msgbuf, &resultDest->fileCompat);
	}

	FUNC3(oldContext);

	resultDest->tuplesSent++;

	FUNC4(executorState);

	return true;
}