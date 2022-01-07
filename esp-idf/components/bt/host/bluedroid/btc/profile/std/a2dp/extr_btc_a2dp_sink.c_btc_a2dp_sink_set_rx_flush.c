
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_flush; } ;
struct TYPE_4__ {TYPE_1__ btc_aa_snk_cb; } ;
typedef int BOOLEAN ;


 int APPL_TRACE_EVENT (char*,int ) ;
 TYPE_2__ a2dp_sink_local_param ;

void btc_a2dp_sink_set_rx_flush(BOOLEAN enable)
{
    APPL_TRACE_EVENT("## DROP RX %d ##\n", enable);
    a2dp_sink_local_param.btc_aa_snk_cb.rx_flush = enable;
}
