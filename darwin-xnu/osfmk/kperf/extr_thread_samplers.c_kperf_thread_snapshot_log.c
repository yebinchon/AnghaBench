
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kperf_thread_snapshot {int kpthsn_flags; int kpthsn_io_tier; int kpthsn_last_made_runnable_time; scalar_t__ kpthsn_suspend_count; } ;


 int BUF_DATA (int ,int,int ,...) ;
 int LOWER_32 (int ) ;
 int PERF_TI_SNAPDATA ;
 int PERF_TI_SNAPDATA_32 ;
 int UPPER_32 (int ) ;
 int assert (int ) ;

void
kperf_thread_snapshot_log(struct kperf_thread_snapshot *thsn)
{
 assert(thsn != ((void*)0));

 BUF_DATA(PERF_TI_SNAPDATA, thsn->kpthsn_flags | ((uint32_t)(thsn->kpthsn_suspend_count) << 8)
                                               | (thsn->kpthsn_io_tier << 24),
                            thsn->kpthsn_last_made_runnable_time);






}
