
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* tts_isnull; int * tts_values; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_9__ {int fe_msgbuf; } ;
struct TYPE_8__ {int tuplesSent; int fileCompat; scalar_t__ writeLocalFile; int * executorState; int * columnOutputFunctions; TYPE_3__* copyOutState; int * connectionList; int tupleDescriptor; } ;
typedef int StringInfo ;
typedef TYPE_2__ RemoteFileDestReceiver ;
typedef int MemoryContext ;
typedef int List ;
typedef int FmgrInfo ;
typedef int EState ;
typedef int DestReceiver ;
typedef int Datum ;
typedef TYPE_3__* CopyOutState ;


 int AppendCopyRowData (int *,int*,int ,TYPE_3__*,int *,int *) ;
 int BroadcastCopyData (int ,int *) ;
 int GetPerTupleMemoryContext (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int ResetPerTupleExprContext (int *) ;
 int WriteToLocalFile (int ,int *) ;
 int resetStringInfo (int ) ;
 int slot_getallattrs (TYPE_1__*) ;

__attribute__((used)) static bool
RemoteFileDestReceiverReceive(TupleTableSlot *slot, DestReceiver *dest)
{
 RemoteFileDestReceiver *resultDest = (RemoteFileDestReceiver *) dest;

 TupleDesc tupleDescriptor = resultDest->tupleDescriptor;

 List *connectionList = resultDest->connectionList;
 CopyOutState copyOutState = resultDest->copyOutState;
 FmgrInfo *columnOutputFunctions = resultDest->columnOutputFunctions;

 Datum *columnValues = ((void*)0);
 bool *columnNulls = ((void*)0);
 StringInfo copyData = copyOutState->fe_msgbuf;

 EState *executorState = resultDest->executorState;
 MemoryContext executorTupleContext = GetPerTupleMemoryContext(executorState);
 MemoryContext oldContext = MemoryContextSwitchTo(executorTupleContext);

 slot_getallattrs(slot);

 columnValues = slot->tts_values;
 columnNulls = slot->tts_isnull;

 resetStringInfo(copyData);


 AppendCopyRowData(columnValues, columnNulls, tupleDescriptor,
       copyOutState, columnOutputFunctions, ((void*)0));


 BroadcastCopyData(copyData, connectionList);


 if (resultDest->writeLocalFile)
 {
  WriteToLocalFile(copyOutState->fe_msgbuf, &resultDest->fileCompat);
 }

 MemoryContextSwitchTo(oldContext);

 resultDest->tuplesSent++;

 ResetPerTupleExprContext(executorState);

 return 1;
}
