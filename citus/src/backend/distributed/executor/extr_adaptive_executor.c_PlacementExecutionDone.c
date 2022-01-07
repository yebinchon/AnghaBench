
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* distributedExecution; } ;
typedef TYPE_1__ WorkerPool ;
struct TYPE_11__ {scalar_t__ executionState; TYPE_3__* shardPlacement; TYPE_4__* shardCommandExecution; TYPE_1__* workerPool; } ;
typedef TYPE_2__ TaskPlacementExecution ;
typedef scalar_t__ TaskExecutionState ;
struct TYPE_14__ {int failed; int unfinishedTaskCount; } ;
struct TYPE_13__ {scalar_t__ executionState; } ;
struct TYPE_12__ {scalar_t__ shardState; int placementId; } ;
typedef TYPE_3__ ShardPlacement ;
typedef TYPE_4__ ShardCommandExecution ;
typedef TYPE_5__ DistributedExecution ;


 scalar_t__ FILE_FINALIZED ;
 int FILE_INACTIVE ;
 scalar_t__ PLACEMENT_EXECUTION_FAILED ;
 scalar_t__ PLACEMENT_EXECUTION_FINISHED ;
 scalar_t__ PLACEMENT_EXECUTION_NOT_READY ;
 int ScheduleNextPlacementExecution (TYPE_2__*,int) ;
 scalar_t__ ShouldMarkPlacementsInvalidOnFailure (TYPE_5__*) ;
 scalar_t__ TASK_EXECUTION_FAILED ;
 scalar_t__ TASK_EXECUTION_FINISHED ;
 scalar_t__ TASK_EXECUTION_NOT_FINISHED ;
 scalar_t__ TaskExecutionStateMachine (TYPE_4__*) ;
 int UpdateShardPlacementState (int ,int ) ;

__attribute__((used)) static void
PlacementExecutionDone(TaskPlacementExecution *placementExecution, bool succeeded)
{
 WorkerPool *workerPool = placementExecution->workerPool;
 DistributedExecution *execution = workerPool->distributedExecution;
 ShardCommandExecution *shardCommandExecution =
  placementExecution->shardCommandExecution;
 TaskExecutionState executionState = shardCommandExecution->executionState;
 TaskExecutionState newExecutionState = TASK_EXECUTION_NOT_FINISHED;
 bool failedPlacementExecutionIsOnPendingQueue = 0;


 if (succeeded)
 {
  placementExecution->executionState = PLACEMENT_EXECUTION_FINISHED;
 }
 else
 {
  if (ShouldMarkPlacementsInvalidOnFailure(execution))
  {
   ShardPlacement *shardPlacement = placementExecution->shardPlacement;





   if (shardPlacement->shardState == FILE_FINALIZED)
   {
    UpdateShardPlacementState(shardPlacement->placementId, FILE_INACTIVE);
   }
  }

  if (placementExecution->executionState == PLACEMENT_EXECUTION_NOT_READY)
  {






   failedPlacementExecutionIsOnPendingQueue = 1;
  }

  placementExecution->executionState = PLACEMENT_EXECUTION_FAILED;
 }

 if (executionState != TASK_EXECUTION_NOT_FINISHED)
 {




  return;
 }





 newExecutionState = TaskExecutionStateMachine(shardCommandExecution);
 if (newExecutionState == TASK_EXECUTION_FINISHED)
 {
  execution->unfinishedTaskCount--;
  return;
 }
 else if (newExecutionState == TASK_EXECUTION_FAILED)
 {
  execution->unfinishedTaskCount--;





  execution->failed = 1;
  return;
 }
 else if (!failedPlacementExecutionIsOnPendingQueue)
 {
  ScheduleNextPlacementExecution(placementExecution, succeeded);
 }
}
