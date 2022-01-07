
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* filePath; struct TYPE_3__* columnOutputFunctions; struct TYPE_3__* copyOutState; } ;
typedef TYPE_1__ TaskFileDestReceiver ;
typedef int DestReceiver ;


 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
TaskFileDestReceiverDestroy(DestReceiver *destReceiver)
{
 TaskFileDestReceiver *taskFileDest = (TaskFileDestReceiver *) destReceiver;

 if (taskFileDest->copyOutState)
 {
  pfree(taskFileDest->copyOutState);
 }

 if (taskFileDest->columnOutputFunctions)
 {
  pfree(taskFileDest->columnOutputFunctions);
 }

 pfree(taskFileDest->filePath);
 pfree(taskFileDest);
}
