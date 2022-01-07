
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_task_snapshot {int kptksn_flags; int kptksn_suspend_count; int kptksn_pageins; int kptksn_user_time_in_terminated_threads; int kptksn_system_time_in_terminated_threads; } ;


 int BUF_DATA (int ,int,int,int,int) ;
 int ENCODE_LOWER_64 (int) ;
 int ENCODE_UPPER_64 (int) ;
 int LOWER_32 (int) ;
 int PERF_TK_SNAP_DATA ;
 int PERF_TK_SNAP_DATA1_32 ;
 int PERF_TK_SNAP_DATA2_32 ;
 int UPPER_32 (int) ;
 int assert (int ) ;

void
kperf_task_snapshot_log(struct kperf_task_snapshot *tksn)
{
 assert(tksn != ((void*)0));


 BUF_DATA(PERF_TK_SNAP_DATA, tksn->kptksn_flags,
          ENCODE_UPPER_64(tksn->kptksn_suspend_count) |
          ENCODE_LOWER_64(tksn->kptksn_pageins),
          tksn->kptksn_user_time_in_terminated_threads,
          tksn->kptksn_system_time_in_terminated_threads);
}
