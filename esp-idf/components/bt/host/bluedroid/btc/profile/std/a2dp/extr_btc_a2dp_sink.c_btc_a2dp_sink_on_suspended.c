
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_AV_SUSPEND ;
struct TYPE_3__ {int rx_flush; } ;
struct TYPE_4__ {TYPE_1__ btc_aa_snk_cb; } ;


 int TRUE ;
 TYPE_2__ a2dp_sink_local_param ;
 int btc_a2dp_sink_rx_flush_req () ;

void btc_a2dp_sink_on_suspended(tBTA_AV_SUSPEND *p_av)
{
    a2dp_sink_local_param.btc_aa_snk_cb.rx_flush = TRUE;
    btc_a2dp_sink_rx_flush_req();
    return;
}
