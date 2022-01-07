
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int taskType; } ;
typedef TYPE_1__ Task ;
typedef scalar_t__ RowModifyLevel ;
typedef int List ;


 scalar_t__ ROW_MODIFY_READONLY ;
 int ReadOnlyTask (int ) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;

__attribute__((used)) static bool
TaskListModifiesDatabase(RowModifyLevel modLevel, List *taskList)
{
 Task *firstTask = ((void*)0);

 if (modLevel > ROW_MODIFY_READONLY)
 {
  return 1;
 }





 if (list_length(taskList) < 1)
 {

  return 0;
 }

 firstTask = (Task *) linitial(taskList);

 return !ReadOnlyTask(firstTask->taskType);
}
