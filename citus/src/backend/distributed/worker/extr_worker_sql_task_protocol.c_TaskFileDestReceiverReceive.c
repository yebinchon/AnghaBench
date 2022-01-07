
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* tts_isnull; int * tts_values; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_9__ {int tuplesSent; int * executorState; int * columnOutputFunctions; TYPE_3__* copyOutState; int tupleDescriptor; } ;
typedef TYPE_2__ TaskFileDestReceiver ;
struct TYPE_10__ {int fe_msgbuf; } ;
typedef int StringInfo ;
typedef int MemoryContext ;
typedef int FmgrInfo ;
typedef int EState ;
typedef int DestReceiver ;
typedef int Datum ;
typedef TYPE_3__* CopyOutState ;


 int AppendCopyRowData (int *,int*,int ,TYPE_3__*,int *,int *) ;
 int GetPerTupleMemoryContext (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int ResetPerTupleExprContext (int *) ;
 int WriteToLocalFile (int ,TYPE_2__*) ;
 int resetStringInfo (int ) ;
 int slot_getallattrs (TYPE_1__*) ;

__attribute__((used)) static bool
TaskFileDestReceiverReceive(TupleTableSlot *slot, DestReceiver *dest)
{
 TaskFileDestReceiver *taskFileDest = (TaskFileDestReceiver *) dest;

 TupleDesc tupleDescriptor = taskFileDest->tupleDescriptor;

 CopyOutState copyOutState = taskFileDest->copyOutState;
 FmgrInfo *columnOutputFunctions = taskFileDest->columnOutputFunctions;

 Datum *columnValues = ((void*)0);
 bool *columnNulls = ((void*)0);
 StringInfo copyData = copyOutState->fe_msgbuf;

 EState *executorState = taskFileDest->executorState;
 MemoryContext executorTupleContext = GetPerTupleMemoryContext(executorState);
 MemoryContext oldContext = MemoryContextSwitchTo(executorTupleContext);

 slot_getallattrs(slot);

 columnValues = slot->tts_values;
 columnNulls = slot->tts_isnull;

 resetStringInfo(copyData);


 AppendCopyRowData(columnValues, columnNulls, tupleDescriptor,
       copyOutState, columnOutputFunctions, ((void*)0));

 WriteToLocalFile(copyOutState->fe_msgbuf, taskFileDest);

 MemoryContextSwitchTo(oldContext);

 taskFileDest->tuplesSent++;

 ResetPerTupleExprContext(executorState);

 return 1;
}
