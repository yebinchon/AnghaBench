
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_4__ {int binaryCopyFormat; int filePath; int memoryContext; int * executorState; TYPE_1__ pub; } ;
typedef TYPE_2__ TaskFileDestReceiver ;
typedef int EState ;
typedef int DestReceiver ;


 int CurrentMemoryContext ;
 int DestCopyOut ;
 int TaskFileDestReceiverDestroy ;
 int TaskFileDestReceiverReceive ;
 int TaskFileDestReceiverShutdown ;
 int TaskFileDestReceiverStartup ;
 scalar_t__ palloc0 (int) ;
 int pstrdup (char*) ;

__attribute__((used)) static DestReceiver *
CreateTaskFileDestReceiver(char *filePath, EState *executorState, bool binaryCopyFormat)
{
 TaskFileDestReceiver *taskFileDest = ((void*)0);

 taskFileDest = (TaskFileDestReceiver *) palloc0(sizeof(TaskFileDestReceiver));


 taskFileDest->pub.receiveSlot = TaskFileDestReceiverReceive;
 taskFileDest->pub.rStartup = TaskFileDestReceiverStartup;
 taskFileDest->pub.rShutdown = TaskFileDestReceiverShutdown;
 taskFileDest->pub.rDestroy = TaskFileDestReceiverDestroy;
 taskFileDest->pub.mydest = DestCopyOut;


 taskFileDest->executorState = executorState;
 taskFileDest->memoryContext = CurrentMemoryContext;
 taskFileDest->filePath = pstrdup(filePath);
 taskFileDest->binaryCopyFormat = binaryCopyFormat;

 return (DestReceiver *) taskFileDest;
}
