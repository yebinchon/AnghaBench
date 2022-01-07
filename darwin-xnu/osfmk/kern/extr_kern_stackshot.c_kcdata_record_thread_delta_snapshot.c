
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* unaligned_u64 ;
typedef int uint64_t ;
typedef TYPE_3__* thread_t ;
struct thread_delta_snapshot_v3 {void* tds_effective_policy; void* tds_requested_policy; scalar_t__ tds_io_tier; int tds_rqos_override; int tds_rqos; int tds_eqos; int tds_sched_priority; int tds_base_priority; int tds_sched_flags; int tds_state; int tds_last_made_runnable_time; int tds_ss_flags; scalar_t__ tds_voucher_identifier; int tds_thread_id; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {int thep_qos; scalar_t__ thep_darwinbg; } ;
struct TYPE_8__ {int thrp_qos_workq_override; int thrp_qos_override; int thrp_qos; } ;
struct TYPE_10__ {scalar_t__ ith_voucher; scalar_t__ suspend_count; int options; TYPE_2__ effective_policy; TYPE_1__ requested_policy; int sched_pri; int base_pri; int sched_flags; int state; int last_made_runnable_time; } ;


 scalar_t__ IPC_VOUCHER_NULL ;
 int MAX (int ,int ) ;
 int TASK_POLICY_IO ;
 int TASK_POLICY_PASSIVE_IO ;
 int TH_OPT_GLOBAL_FORCED_IDLE ;
 scalar_t__ VM_KERNEL_ADDRPERM (scalar_t__) ;
 int kGlobalForcedIdle ;
 int kThreadDarwinBG ;
 int kThreadIOPassive ;
 int kThreadIdleWorker ;
 int kThreadOnCore ;
 int kThreadSuspended ;
 scalar_t__ proc_get_effective_thread_policy (TYPE_3__*,int ) ;
 scalar_t__ stackshot_thread_is_idle_worker_unsafe (TYPE_3__*) ;
 int static_assert (int) ;
 int thread_tid (TYPE_3__*) ;

__attribute__((used)) static int
kcdata_record_thread_delta_snapshot(struct thread_delta_snapshot_v3 * cur_thread_snap, thread_t thread, boolean_t thread_on_core)
{
 cur_thread_snap->tds_thread_id = thread_tid(thread);
 if (IPC_VOUCHER_NULL != thread->ith_voucher)
  cur_thread_snap->tds_voucher_identifier = VM_KERNEL_ADDRPERM(thread->ith_voucher);
 else
  cur_thread_snap->tds_voucher_identifier = 0;

 cur_thread_snap->tds_ss_flags = 0;
 if (thread->effective_policy.thep_darwinbg)
  cur_thread_snap->tds_ss_flags |= kThreadDarwinBG;
 if (proc_get_effective_thread_policy(thread, TASK_POLICY_PASSIVE_IO))
  cur_thread_snap->tds_ss_flags |= kThreadIOPassive;
 if (thread->suspend_count > 0)
  cur_thread_snap->tds_ss_flags |= kThreadSuspended;
 if (thread->options & TH_OPT_GLOBAL_FORCED_IDLE)
  cur_thread_snap->tds_ss_flags |= kGlobalForcedIdle;
 if (thread_on_core)
  cur_thread_snap->tds_ss_flags |= kThreadOnCore;
 if (stackshot_thread_is_idle_worker_unsafe(thread))
  cur_thread_snap->tds_ss_flags |= kThreadIdleWorker;

 cur_thread_snap->tds_last_made_runnable_time = thread->last_made_runnable_time;
 cur_thread_snap->tds_state = thread->state;
 cur_thread_snap->tds_sched_flags = thread->sched_flags;
 cur_thread_snap->tds_base_priority = thread->base_pri;
 cur_thread_snap->tds_sched_priority = thread->sched_pri;
 cur_thread_snap->tds_eqos = thread->effective_policy.thep_qos;
 cur_thread_snap->tds_rqos = thread->requested_policy.thrp_qos;
 cur_thread_snap->tds_rqos_override = MAX(thread->requested_policy.thrp_qos_override,
                thread->requested_policy.thrp_qos_workq_override);
 cur_thread_snap->tds_io_tier = proc_get_effective_thread_policy(thread, TASK_POLICY_IO);

 static_assert(sizeof(thread->effective_policy) == sizeof(uint64_t));
 static_assert(sizeof(thread->requested_policy) == sizeof(uint64_t));
 cur_thread_snap->tds_requested_policy = *(unaligned_u64 *) &thread->requested_policy;
 cur_thread_snap->tds_effective_policy = *(unaligned_u64 *) &thread->effective_policy;

 return 0;
}
