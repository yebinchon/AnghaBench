
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
struct task_pend_token {int dummy; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int IMPORTANCE_CODE (int,int) ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int,int ) ;
 int TASK_POLICY_TASK ;
 int proc_set_task_policy_locked (int ,int,int,int,int ) ;
 int task_lock (int ) ;
 int task_pid (int ) ;
 int task_policy_update_complete_unlocked (int ,struct task_pend_token*) ;
 int task_policy_update_locked (int ,struct task_pend_token*) ;
 int task_unlock (int ) ;
 int tpending (struct task_pend_token*) ;
 int trequested_0 (int ) ;
 int trequested_1 (int ) ;

void
proc_set_task_policy(task_t task,
                     int category,
                     int flavor,
                     int value)
{
 struct task_pend_token pend_token = {};

 task_lock(task);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(flavor, (category | TASK_POLICY_TASK))) | DBG_FUNC_START,
                           task_pid(task), trequested_0(task),
                           trequested_1(task), value, 0);

 proc_set_task_policy_locked(task, category, flavor, value, 0);

 task_policy_update_locked(task, &pend_token);


 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(flavor, (category | TASK_POLICY_TASK))) | DBG_FUNC_END,
                           task_pid(task), trequested_0(task),
                           trequested_1(task), tpending(&pend_token), 0);

 task_unlock(task);

 task_policy_update_complete_unlocked(task, &pend_token);
}
