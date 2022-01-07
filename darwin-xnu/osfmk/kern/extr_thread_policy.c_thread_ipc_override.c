
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_2__* thread_t ;
struct task_pend_token {scalar_t__ tpt_update_sockets; } ;
typedef int spl_t ;
typedef int boolean_t ;
struct TYPE_8__ {scalar_t__ thrp_qos_ipc_override; } ;
struct TYPE_9__ {int ipc_overrides; TYPE_1__ requested_policy; } ;


 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_QOS_IPC_OVERRIDE ;
 scalar_t__ THREAD_QOS_LAST ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 int assert (int) ;
 int proc_set_thread_policy_spinlocked (TYPE_2__*,int ,int ,scalar_t__,int ,struct task_pend_token*) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_2__*) ;
 int thread_policy_update_complete_unlocked (TYPE_2__*,struct task_pend_token*) ;
 int thread_unlock (TYPE_2__*) ;

__attribute__((used)) static void
thread_ipc_override(thread_t thread,
                    uint32_t qos_override,
                    boolean_t is_new_override)
{
 struct task_pend_token pend_token = {};
 boolean_t needs_update;

 spl_t s = splsched();
 thread_lock(thread);

 uint32_t old_override = thread->requested_policy.thrp_qos_ipc_override;

 assert(qos_override > THREAD_QOS_UNSPECIFIED);
 assert(qos_override < THREAD_QOS_LAST);

 if (is_new_override) {
  if (thread->ipc_overrides++ == 0) {

   assert(old_override == THREAD_QOS_UNSPECIFIED);
  } else {

   assert(old_override > THREAD_QOS_UNSPECIFIED);
  }
 } else {

  assert(thread->ipc_overrides > 0);
  assert(old_override > THREAD_QOS_UNSPECIFIED);
 }





 if (thread->ipc_overrides == 1) {
  needs_update = qos_override != old_override;
 } else {
  needs_update = qos_override > old_override;
 }

 if (needs_update) {
  proc_set_thread_policy_spinlocked(thread, TASK_POLICY_ATTRIBUTE,
                                    TASK_POLICY_QOS_IPC_OVERRIDE,
                                    qos_override, 0, &pend_token);
  assert(pend_token.tpt_update_sockets == 0);
 }

 thread_unlock(thread);
 splx(s);

 thread_policy_update_complete_unlocked(thread, &pend_token);
}
