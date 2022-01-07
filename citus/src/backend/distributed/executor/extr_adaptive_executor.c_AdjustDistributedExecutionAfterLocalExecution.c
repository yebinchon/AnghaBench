
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remoteTaskList; void* unfinishedTaskCount; void* totalTaskCount; int tasksToExecute; } ;
typedef TYPE_1__ DistributedExecution ;


 void* list_length (int ) ;

__attribute__((used)) static void
AdjustDistributedExecutionAfterLocalExecution(DistributedExecution *execution)
{

 execution->tasksToExecute = execution->remoteTaskList;

 execution->totalTaskCount = list_length(execution->remoteTaskList);
 execution->unfinishedTaskCount = list_length(execution->remoteTaskList);
}
