
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * btc_aa_snk_task_hdl; } ;


 int APPL_TRACE_EVENT (char*) ;
 int BTC_A2DP_SINK_STATE_SHUTTING_DOWN ;
 int BTC_MEDIA_TASK_SINK_CLEAN_UP ;
 TYPE_1__ a2dp_sink_local_param ;
 int * a2dp_sink_local_param_ptr ;
 int btc_a2dp_sink_ctrl (int ,int *) ;
 int btc_a2dp_sink_state ;
 int osi_free (int *) ;

void btc_a2dp_sink_shutdown(void)
{
    APPL_TRACE_EVENT("## A2DP SINK STOP MEDIA THREAD ##\n");


    btc_a2dp_sink_state = BTC_A2DP_SINK_STATE_SHUTTING_DOWN;

    btc_a2dp_sink_ctrl(BTC_MEDIA_TASK_SINK_CLEAN_UP, ((void*)0));

    a2dp_sink_local_param.btc_aa_snk_task_hdl = ((void*)0);


    osi_free(a2dp_sink_local_param_ptr);
    a2dp_sink_local_param_ptr = ((void*)0);

}
