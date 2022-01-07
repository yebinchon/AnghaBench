
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* columnOutputFunctions; struct TYPE_3__* copyOutState; } ;
typedef TYPE_1__ RemoteFileDestReceiver ;
typedef int DestReceiver ;


 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
RemoteFileDestReceiverDestroy(DestReceiver *destReceiver)
{
 RemoteFileDestReceiver *resultDest = (RemoteFileDestReceiver *) destReceiver;

 if (resultDest->copyOutState)
 {
  pfree(resultDest->copyOutState);
 }

 if (resultDest->columnOutputFunctions)
 {
  pfree(resultDest->columnOutputFunctions);
 }

 pfree(resultDest);
}
