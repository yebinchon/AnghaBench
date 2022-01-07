
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* task_t ;
struct kperf_task_snapshot {int kptksn_system_time_in_terminated_threads; int kptksn_user_time_in_terminated_threads; int kptksn_pageins; int kptksn_suspend_count; int kptksn_flags; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ trp_role; int trp_boosted; } ;
struct TYPE_5__ {scalar_t__ tep_darwinbg; } ;
struct TYPE_7__ {int total_system_time; int total_user_time; int pageins; int suspend_count; int bsd_info; TYPE_2__ requested_policy; TYPE_1__ effective_policy; } ;


 int BUF_INFO (int) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ FALSE ;
 int KPERF_TASK_ALLOW_IDLE_EXIT ;
 int KPERF_TASK_FLAG_BOOSTED ;
 int KPERF_TASK_FLAG_DARWIN_BG ;
 int KPERF_TASK_FLAG_DIRTY ;
 int KPERF_TASK_FLAG_DIRTY_TRACKED ;
 int KPERF_TASK_FLAG_FOREGROUND ;
 int PERF_TK_SNAP_SAMPLE ;
 scalar_t__ TASK_FOREGROUND_APPLICATION ;
 int assert (int ) ;
 int memorystatus_proc_flags_unsafe (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;

void
kperf_task_snapshot_sample(task_t task, struct kperf_task_snapshot *tksn)
{
 BUF_INFO(PERF_TK_SNAP_SAMPLE | DBG_FUNC_START);

 assert(tksn != ((void*)0));

 tksn->kptksn_flags = 0;
 if (task->effective_policy.tep_darwinbg) {
  tksn->kptksn_flags |= KPERF_TASK_FLAG_DARWIN_BG;
 }
 if (task->requested_policy.trp_role == TASK_FOREGROUND_APPLICATION) {
  tksn->kptksn_flags |= KPERF_TASK_FLAG_FOREGROUND;
 }
 if (task->requested_policy.trp_boosted == 1) {
  tksn->kptksn_flags |= KPERF_TASK_FLAG_BOOSTED;
 }
 tksn->kptksn_suspend_count = task->suspend_count;
 tksn->kptksn_pageins = task->pageins;
 tksn->kptksn_user_time_in_terminated_threads = task->total_user_time;
 tksn->kptksn_system_time_in_terminated_threads = task->total_system_time;

 BUF_INFO(PERF_TK_SNAP_SAMPLE | DBG_FUNC_END);
}
