
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * task_t ;


 scalar_t__ TASK_FOREGROUND_APPLICATION ;
 scalar_t__ TASK_IMPORTANCE_FOREGROUND ;
 scalar_t__ TASK_IMPORTANCE_NOTDARWINBG ;
 int TASK_POLICY_DARWIN_BG ;
 int TASK_POLICY_ROLE ;
 scalar_t__ proc_get_effective_task_policy (int *,int ) ;

int
task_importance_estimate(task_t task)
{
 int task_importance = 0;

 if (task == ((void*)0)) {
  return 0;
 }

 if (proc_get_effective_task_policy(task, TASK_POLICY_ROLE) == TASK_FOREGROUND_APPLICATION)
   task_importance += TASK_IMPORTANCE_FOREGROUND;

 if (proc_get_effective_task_policy(task, TASK_POLICY_DARWIN_BG) == 0)
   task_importance += TASK_IMPORTANCE_NOTDARWINBG;

 return task_importance;
}
