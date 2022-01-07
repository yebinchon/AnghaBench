
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_thread_dispatch {int kpthdi_dq_serialno; } ;


 int BUF_DATA (int ,int ,...) ;
 int LOWER_32 (int ) ;
 int PERF_TI_DISPDATA ;
 int PERF_TI_DISPDATA_32 ;
 int UPPER_32 (int ) ;
 int assert (int ) ;

void
kperf_thread_dispatch_log(struct kperf_thread_dispatch *thdi)
{
 assert(thdi != ((void*)0));

 BUF_DATA(PERF_TI_DISPDATA, thdi->kpthdi_dq_serialno);




}
