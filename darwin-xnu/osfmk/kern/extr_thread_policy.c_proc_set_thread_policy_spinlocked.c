
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int task_pend_token_t ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FALSE ;
 int IMPORTANCE_CODE (int,int) ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int,int ) ;
 int TASK_POLICY_THREAD ;
 int thread_policy_update_spinlocked (int ,int ,int ) ;
 int thread_set_requested_policy_spinlocked (int ,int,int,int,int) ;
 int thread_tid (int ) ;
 int threquested_0 (int ) ;
 int threquested_1 (int ) ;
 int tpending (int ) ;

__attribute__((used)) static void
proc_set_thread_policy_spinlocked(thread_t thread,
                                  int category,
                                  int flavor,
                                  int value,
                                  int value2,
                                  task_pend_token_t pend_token)
{
 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(flavor, (category | TASK_POLICY_THREAD))) | DBG_FUNC_START,
                           thread_tid(thread), threquested_0(thread),
                           threquested_1(thread), value, 0);

 thread_set_requested_policy_spinlocked(thread, category, flavor, value, value2);

 thread_policy_update_spinlocked(thread, FALSE, pend_token);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(flavor, (category | TASK_POLICY_THREAD))) | DBG_FUNC_END,
                           thread_tid(thread), threquested_0(thread),
                           threquested_1(thread), tpending(pend_token), 0);
}
