
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RxSbcQ; } ;
struct TYPE_4__ {TYPE_1__ btc_aa_snk_cb; } ;


 int APPL_TRACE_DEBUG (char*) ;
 TYPE_2__ a2dp_sink_local_param ;
 int btc_a2dp_sink_flush_q (int ) ;

__attribute__((used)) static void btc_a2dp_sink_rx_flush(void)
{

    APPL_TRACE_DEBUG("btc_a2dp_sink_rx_flush");

    btc_a2dp_sink_flush_q(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ);
}
