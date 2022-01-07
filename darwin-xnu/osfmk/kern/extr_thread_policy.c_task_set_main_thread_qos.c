
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef scalar_t__ task_t ;
struct task_pend_token {int dummy; } ;
struct TYPE_11__ {int thrp_qos; } ;
struct TYPE_12__ {scalar_t__ task; TYPE_1__ requested_policy; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int IMPORTANCE_CODE (int ,int ) ;
 int IMP_MAIN_THREAD_QOS ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int,int ) ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_QOS ;
 int assert (int) ;
 int proc_set_thread_policy_locked (TYPE_2__*,int ,int ,int,int ,struct task_pend_token*) ;
 int task_compute_main_thread_qos (scalar_t__) ;
 int thread_mtx_lock (TYPE_2__*) ;
 int thread_mtx_unlock (TYPE_2__*) ;
 int thread_policy_update_complete_unlocked (TYPE_2__*,struct task_pend_token*) ;
 int thread_tid (TYPE_2__*) ;
 int threquested_0 (TYPE_2__*) ;
 int threquested_1 (TYPE_2__*) ;

void
task_set_main_thread_qos(task_t task, thread_t thread) {
 struct task_pend_token pend_token = {};

 assert(thread->task == task);

 thread_mtx_lock(thread);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(IMP_MAIN_THREAD_QOS, 0)) | DBG_FUNC_START,
                           thread_tid(thread), threquested_0(thread), threquested_1(thread),
                           thread->requested_policy.thrp_qos, 0);

 int primordial_qos = task_compute_main_thread_qos(task);

 proc_set_thread_policy_locked(thread, TASK_POLICY_ATTRIBUTE, TASK_POLICY_QOS,
                               primordial_qos, 0, &pend_token);

 thread_mtx_unlock(thread);

 thread_policy_update_complete_unlocked(thread, &pend_token);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(IMP_MAIN_THREAD_QOS, 0)) | DBG_FUNC_END,
                           thread_tid(thread), threquested_0(thread), threquested_1(thread),
                           primordial_qos, 0);
}
