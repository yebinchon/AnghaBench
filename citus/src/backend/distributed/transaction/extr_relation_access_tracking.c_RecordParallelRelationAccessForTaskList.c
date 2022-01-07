
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ taskType; scalar_t__ rowValuesLists; } ;
typedef TYPE_1__ Task ;
typedef int List ;


 scalar_t__ MODIFY_TASK ;
 scalar_t__ MultiShardConnectionType ;
 scalar_t__ NIL ;
 int RecordRelationParallelDDLAccessForTask (TYPE_1__*) ;
 int RecordRelationParallelModifyAccessForTask (TYPE_1__*) ;
 int RecordRelationParallelSelectAccessForTask (TYPE_1__*) ;
 scalar_t__ SEQUENTIAL_CONNECTION ;
 scalar_t__ SQL_TASK ;
 TYPE_1__* linitial (int *) ;
 int list_length (int *) ;

void
RecordParallelRelationAccessForTaskList(List *taskList)
{
 Task *firstTask = ((void*)0);

 if (MultiShardConnectionType == SEQUENTIAL_CONNECTION)
 {

  return;
 }

 if (list_length(taskList) < 2)
 {

  return;
 }





 firstTask = linitial(taskList);

 if (firstTask->taskType == SQL_TASK)
 {
  RecordRelationParallelSelectAccessForTask(firstTask);
 }
 else if (firstTask->taskType == MODIFY_TASK)
 {
  if (firstTask->rowValuesLists != NIL)
  {





  }
  else
  {




   RecordRelationParallelModifyAccessForTask(firstTask);
   RecordRelationParallelSelectAccessForTask(firstTask);
  }
 }
 else
 {
  RecordRelationParallelDDLAccessForTask(firstTask);
 }
}
