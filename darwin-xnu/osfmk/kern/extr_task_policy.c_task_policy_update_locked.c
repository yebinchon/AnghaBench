
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int task_pend_token_t ;
struct TYPE_7__ {int priority; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FALSE ;
 int IMPORTANCE_CODE (int ,int ) ;
 int IMP_UPDATE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int ,int ) ;
 int TASK_POLICY_TASK ;
 int task_pid (TYPE_1__*) ;
 int task_policy_update_internal_locked (TYPE_1__*,int ,int ) ;
 int teffective_0 (TYPE_1__*) ;
 int teffective_1 (TYPE_1__*) ;

__attribute__((used)) static void
task_policy_update_locked(task_t task, task_pend_token_t pend_token)
{
 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(IMP_UPDATE, TASK_POLICY_TASK) | DBG_FUNC_START),
                           task_pid(task), teffective_0(task),
                           teffective_1(task), task->priority, 0);

 task_policy_update_internal_locked(task, FALSE, pend_token);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
      (IMPORTANCE_CODE(IMP_UPDATE, TASK_POLICY_TASK)) | DBG_FUNC_END,
      task_pid(task), teffective_0(task),
      teffective_1(task), task->priority, 0);
}
