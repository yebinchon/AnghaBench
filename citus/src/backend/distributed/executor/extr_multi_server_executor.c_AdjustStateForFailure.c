
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nodeCount; int currentNodeIndex; int failureCount; } ;
typedef TYPE_1__ TaskExecution ;


 int Assert (int) ;

void
AdjustStateForFailure(TaskExecution *taskExecution)
{
 int maxNodeIndex = taskExecution->nodeCount - 1;
 Assert(maxNodeIndex >= 0);

 if (taskExecution->currentNodeIndex < maxNodeIndex)
 {
  taskExecution->currentNodeIndex++;
 }
 else
 {
  taskExecution->currentNodeIndex = 0;
 }

 taskExecution->failureCount++;
}
