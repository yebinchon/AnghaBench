
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int ExecuteTaskList (int ,int *,int ) ;
 int MaxAdaptiveExecutorPoolSize ;
 int ROW_MODIFY_NONE ;

void
ExecuteUtilityTaskListWithoutResults(List *taskList)
{
 ExecuteTaskList(ROW_MODIFY_NONE, taskList, MaxAdaptiveExecutorPoolSize);
}
