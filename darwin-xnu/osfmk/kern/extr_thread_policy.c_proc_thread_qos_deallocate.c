
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct thread_qos_override {struct thread_qos_override* override_next; } ;
struct TYPE_6__ {scalar_t__ thrp_qos_ipc_override; scalar_t__ thrp_qos_sync_ipc_override; scalar_t__ thrp_qos_override; } ;
struct TYPE_7__ {scalar_t__ ipc_overrides; scalar_t__ sync_ipc_overrides; TYPE_1__ requested_policy; struct thread_qos_override* overrides; } ;


 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 int assert (int) ;
 int thread_mtx_lock (TYPE_2__*) ;
 int thread_mtx_unlock (TYPE_2__*) ;
 int thread_qos_override_zone ;
 int zfree (int ,struct thread_qos_override*) ;

void proc_thread_qos_deallocate(thread_t thread)
{

 assert(thread->ipc_overrides == 0);
 assert(thread->requested_policy.thrp_qos_ipc_override == THREAD_QOS_UNSPECIFIED);
 assert(thread->sync_ipc_overrides == 0);
 assert(thread->requested_policy.thrp_qos_sync_ipc_override == THREAD_QOS_UNSPECIFIED);




 struct thread_qos_override *override;

 thread_mtx_lock(thread);
 override = thread->overrides;
 thread->overrides = ((void*)0);
 thread->requested_policy.thrp_qos_override = THREAD_QOS_UNSPECIFIED;

 thread_mtx_unlock(thread);

 while (override) {
  struct thread_qos_override *override_next = override->override_next;

  zfree(thread_qos_override_zone, override);
  override = override_next;
 }
}
