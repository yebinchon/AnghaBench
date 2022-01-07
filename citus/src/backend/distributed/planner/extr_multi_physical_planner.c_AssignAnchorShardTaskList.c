
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int Assert (int) ;
 int * FirstReplicaAssignTaskList (int *) ;
 int * GreedyAssignTaskList (int *) ;
 int * NIL ;
 int * RoundRobinAssignTaskList (int *) ;
 scalar_t__ TASK_ASSIGNMENT_FIRST_REPLICA ;
 scalar_t__ TASK_ASSIGNMENT_GREEDY ;
 scalar_t__ TASK_ASSIGNMENT_ROUND_ROBIN ;
 scalar_t__ TaskAssignmentPolicy ;

List *
AssignAnchorShardTaskList(List *taskList)
{
 List *assignedTaskList = NIL;


 if (TaskAssignmentPolicy == TASK_ASSIGNMENT_GREEDY)
 {
  assignedTaskList = GreedyAssignTaskList(taskList);
 }
 else if (TaskAssignmentPolicy == TASK_ASSIGNMENT_FIRST_REPLICA)
 {
  assignedTaskList = FirstReplicaAssignTaskList(taskList);
 }
 else if (TaskAssignmentPolicy == TASK_ASSIGNMENT_ROUND_ROBIN)
 {
  assignedTaskList = RoundRobinAssignTaskList(taskList);
 }

 Assert(assignedTaskList != NIL);
 return assignedTaskList;
}
