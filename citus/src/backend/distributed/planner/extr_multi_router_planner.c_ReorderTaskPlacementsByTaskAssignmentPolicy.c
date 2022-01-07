
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ TaskAssignmentPolicyType ;
struct TYPE_6__ {int taskId; int * taskPlacementList; int taskType; } ;
typedef TYPE_1__ Task ;
struct TYPE_8__ {int * taskList; } ;
struct TYPE_7__ {int nodePort; int nodeName; } ;
typedef TYPE_2__ ShardPlacement ;
typedef int List ;
typedef TYPE_3__ Job ;


 int Assert (int) ;
 int DEBUG3 ;
 int * NIL ;
 int ReadOnlyTask (int ) ;
 int * RemoveCoordinatorPlacement (int *) ;
 int * RoundRobinReorder (TYPE_1__*,int *) ;
 scalar_t__ TASK_ASSIGNMENT_ROUND_ROBIN ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ,int ) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;

__attribute__((used)) static void
ReorderTaskPlacementsByTaskAssignmentPolicy(Job *job,
           TaskAssignmentPolicyType taskAssignmentPolicy,
           List *placementList)
{
 if (taskAssignmentPolicy == TASK_ASSIGNMENT_ROUND_ROBIN)
 {
  Task *task = ((void*)0);
  List *reorderedPlacementList = NIL;
  ShardPlacement *primaryPlacement = ((void*)0);





  Assert(list_length(job->taskList) == 1);
  task = (Task *) linitial(job->taskList);
  Assert(ReadOnlyTask(task->taskType));
  placementList = RemoveCoordinatorPlacement(placementList);


  reorderedPlacementList = RoundRobinReorder(task, placementList);
  task->taskPlacementList = reorderedPlacementList;

  primaryPlacement = (ShardPlacement *) linitial(reorderedPlacementList);
  ereport(DEBUG3, (errmsg("assigned task %u to node %s:%u", task->taskId,
        primaryPlacement->nodeName,
        primaryPlacement->nodePort)));
 }
}
