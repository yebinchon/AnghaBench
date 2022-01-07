
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct task_pend_token {int dummy; } ;
typedef int spl_t ;
struct TYPE_7__ {scalar_t__ ipc_overrides; } ;


 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_QOS_IPC_OVERRIDE ;
 int THREAD_QOS_UNSPECIFIED ;
 int assert (int) ;
 int proc_set_thread_policy_spinlocked (TYPE_1__*,int ,int ,int ,int ,struct task_pend_token*) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_policy_update_complete_unlocked (TYPE_1__*,struct task_pend_token*) ;
 int thread_unlock (TYPE_1__*) ;

void
thread_drop_ipc_override(thread_t thread)
{
 struct task_pend_token pend_token = {};

 spl_t s = splsched();
 thread_lock(thread);

 assert(thread->ipc_overrides > 0);

 if (--thread->ipc_overrides == 0) {





  proc_set_thread_policy_spinlocked(thread, TASK_POLICY_ATTRIBUTE,
                                    TASK_POLICY_QOS_IPC_OVERRIDE, THREAD_QOS_UNSPECIFIED,
                                    0, &pend_token);
 }

 thread_unlock(thread);
 splx(s);

 thread_policy_update_complete_unlocked(thread, &pend_token);
}
