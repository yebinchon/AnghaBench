
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_ROLE ;
 int proc_get_task_policy (int ,int ,int ) ;
 int proc_set_task_policy (int ,int ,int ,int) ;

void
proc_inherit_task_role(task_t new_task,
                       task_t old_task)
{
 int role;


 role = proc_get_task_policy(old_task, TASK_POLICY_ATTRIBUTE, TASK_POLICY_ROLE);
 proc_set_task_policy(new_task, TASK_POLICY_ATTRIBUTE, TASK_POLICY_ROLE, role);
}
