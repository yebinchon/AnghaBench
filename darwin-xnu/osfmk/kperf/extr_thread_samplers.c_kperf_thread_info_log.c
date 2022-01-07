
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_thread_info {int kpthi_runmode; int kpthi_dq_addr; int kpthi_tid; int kpthi_pid; } ;


 int BUF_DATA (int ,int ,int ,int ,int ) ;
 int PERF_TI_DATA ;

void
kperf_thread_info_log(struct kperf_thread_info *ti)
{
 BUF_DATA(PERF_TI_DATA, ti->kpthi_pid, ti->kpthi_tid ,
                        ti->kpthi_dq_addr, ti->kpthi_runmode);
}
