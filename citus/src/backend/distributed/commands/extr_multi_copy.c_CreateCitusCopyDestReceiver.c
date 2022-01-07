
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_5__ {int partitionColumnIndex; int stopOnFailure; char* intermediateResultIdPrefix; int memoryContext; int * executorState; int * columnNameList; int distributedRelationId; TYPE_1__ pub; } ;
typedef int Oid ;
typedef int List ;
typedef int EState ;
typedef TYPE_2__ CitusCopyDestReceiver ;


 int CitusCopyDestReceiverDestroy ;
 int CitusCopyDestReceiverReceive ;
 int CitusCopyDestReceiverShutdown ;
 int CitusCopyDestReceiverStartup ;
 int CurrentMemoryContext ;
 int DestCopyOut ;
 scalar_t__ palloc0 (int) ;

CitusCopyDestReceiver *
CreateCitusCopyDestReceiver(Oid tableId, List *columnNameList, int partitionColumnIndex,
       EState *executorState, bool stopOnFailure,
       char *intermediateResultIdPrefix)
{
 CitusCopyDestReceiver *copyDest = ((void*)0);

 copyDest = (CitusCopyDestReceiver *) palloc0(sizeof(CitusCopyDestReceiver));


 copyDest->pub.receiveSlot = CitusCopyDestReceiverReceive;
 copyDest->pub.rStartup = CitusCopyDestReceiverStartup;
 copyDest->pub.rShutdown = CitusCopyDestReceiverShutdown;
 copyDest->pub.rDestroy = CitusCopyDestReceiverDestroy;
 copyDest->pub.mydest = DestCopyOut;


 copyDest->distributedRelationId = tableId;
 copyDest->columnNameList = columnNameList;
 copyDest->partitionColumnIndex = partitionColumnIndex;
 copyDest->executorState = executorState;
 copyDest->stopOnFailure = stopOnFailure;
 copyDest->intermediateResultIdPrefix = intermediateResultIdPrefix;
 copyDest->memoryContext = CurrentMemoryContext;

 return copyDest;
}
