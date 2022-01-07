
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rowValuesLists; } ;
typedef TYPE_1__ Task ;
typedef int List ;


 scalar_t__ NIL ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;

__attribute__((used)) static bool
ShouldRunTasksSequentially(List *taskList)
{
 Task *initialTask = ((void*)0);

 if (list_length(taskList) < 2)
 {

  return 0;
 }


 initialTask = (Task *) linitial(taskList);
 if (initialTask->rowValuesLists != NIL)
 {

  return 1;
 }

 return 0;
}
