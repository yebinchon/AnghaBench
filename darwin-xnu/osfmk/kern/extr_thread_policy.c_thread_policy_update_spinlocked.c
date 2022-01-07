
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int task_pend_token_t ;
typedef int boolean_t ;
struct TYPE_7__ {int base_pri; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int IMPORTANCE_CODE (int ,int ) ;
 int IMP_UPDATE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int ,int ) ;
 int TASK_POLICY_THREAD ;
 int theffective_0 (TYPE_1__*) ;
 int theffective_1 (TYPE_1__*) ;
 int thread_policy_update_internal_spinlocked (TYPE_1__*,int ,int ) ;
 int thread_tid (TYPE_1__*) ;

__attribute__((used)) static void
thread_policy_update_spinlocked(thread_t thread, boolean_t recompute_priority, task_pend_token_t pend_token)
{
 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(IMP_UPDATE, TASK_POLICY_THREAD) | DBG_FUNC_START),
                           thread_tid(thread), theffective_0(thread),
                           theffective_1(thread), thread->base_pri, 0);

 thread_policy_update_internal_spinlocked(thread, recompute_priority, pend_token);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(IMP_UPDATE, TASK_POLICY_THREAD)) | DBG_FUNC_END,
                           thread_tid(thread), theffective_0(thread),
                           theffective_1(thread), thread->base_pri, 0);
}
