
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int btc_aa_snk_task_hdl; } ;


 int OSI_THREAD_MAX_TIMEOUT ;
 TYPE_1__ a2dp_sink_local_param ;
 int btc_a2dp_sink_data_ready ;
 int osi_thread_post (int ,int ,int *,int,int ) ;

__attribute__((used)) static void btc_a2dp_sink_data_post(void)
{
    osi_thread_post(a2dp_sink_local_param.btc_aa_snk_task_hdl, btc_a2dp_sink_data_ready, ((void*)0), 1, OSI_THREAD_MAX_TIMEOUT);
}
