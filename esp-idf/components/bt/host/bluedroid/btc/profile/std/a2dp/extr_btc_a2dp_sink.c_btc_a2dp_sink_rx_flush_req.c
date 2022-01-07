
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RxSbcQ; } ;
struct TYPE_4__ {TYPE_1__ btc_aa_snk_cb; } ;
typedef scalar_t__ BOOLEAN ;


 int BTC_MEDIA_FLUSH_AA_RX ;
 scalar_t__ TRUE ;
 TYPE_2__ a2dp_sink_local_param ;
 scalar_t__ btc_a2dp_sink_ctrl (int ,int *) ;
 scalar_t__ fixed_queue_is_empty (int ) ;

BOOLEAN btc_a2dp_sink_rx_flush_req(void)
{
    if (fixed_queue_is_empty(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ) == TRUE) {
        return TRUE;
    }

    return btc_a2dp_sink_ctrl(BTC_MEDIA_FLUSH_AA_RX, ((void*)0));
}
