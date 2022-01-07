
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_4__ {char* resultId; int writeLocalFile; int memoryContext; int * initialNodeList; int * executorState; TYPE_1__ pub; } ;
typedef TYPE_2__ RemoteFileDestReceiver ;
typedef int List ;
typedef int EState ;
typedef int DestReceiver ;


 int CurrentMemoryContext ;
 int DestCopyOut ;
 int RemoteFileDestReceiverDestroy ;
 int RemoteFileDestReceiverReceive ;
 int RemoteFileDestReceiverShutdown ;
 int RemoteFileDestReceiverStartup ;
 scalar_t__ palloc0 (int) ;

DestReceiver *
CreateRemoteFileDestReceiver(char *resultId, EState *executorState,
        List *initialNodeList, bool writeLocalFile)
{
 RemoteFileDestReceiver *resultDest = ((void*)0);

 resultDest = (RemoteFileDestReceiver *) palloc0(sizeof(RemoteFileDestReceiver));


 resultDest->pub.receiveSlot = RemoteFileDestReceiverReceive;
 resultDest->pub.rStartup = RemoteFileDestReceiverStartup;
 resultDest->pub.rShutdown = RemoteFileDestReceiverShutdown;
 resultDest->pub.rDestroy = RemoteFileDestReceiverDestroy;
 resultDest->pub.mydest = DestCopyOut;


 resultDest->resultId = resultId;
 resultDest->executorState = executorState;
 resultDest->initialNodeList = initialNodeList;
 resultDest->memoryContext = CurrentMemoryContext;
 resultDest->writeLocalFile = writeLocalFile;

 return (DestReceiver *) resultDest;
}
