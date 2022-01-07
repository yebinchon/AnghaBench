
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int num_frames_to_be_processed; int offset; } ;
typedef TYPE_2__ tBT_SBC_HDR ;
typedef int UINT8 ;
struct TYPE_9__ {scalar_t__ rx_flush; int RxSbcQ; } ;
struct TYPE_12__ {TYPE_1__ btc_aa_snk_cb; } ;
struct TYPE_11__ {scalar_t__ len; scalar_t__ offset; } ;
typedef TYPE_3__ BT_HDR ;


 int APPL_TRACE_DEBUG (char*) ;
 int APPL_TRACE_VERBOSE (char*,int) ;
 int APPL_TRACE_WARNING (char*) ;
 scalar_t__ BTC_A2DP_SINK_STATE_ON ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 scalar_t__ MAX_OUTPUT_A2DP_SNK_FRAME_QUEUE_SZ ;
 scalar_t__ TRUE ;
 TYPE_8__ a2dp_sink_local_param ;
 int btc_a2dp_sink_data_post () ;
 scalar_t__ btc_a2dp_sink_state ;
 int fixed_queue_enqueue (int ,TYPE_2__*,int ) ;
 int fixed_queue_length (int ) ;
 int memcpy (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 scalar_t__ osi_malloc (scalar_t__) ;

UINT8 btc_a2dp_sink_enque_buf(BT_HDR *p_pkt)
{
    tBT_SBC_HDR *p_msg;

    if (btc_a2dp_sink_state != BTC_A2DP_SINK_STATE_ON){
        return 0;
    }

    if (a2dp_sink_local_param.btc_aa_snk_cb.rx_flush == TRUE) {
        return fixed_queue_length(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ);
    }

    if (fixed_queue_length(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ) >= MAX_OUTPUT_A2DP_SNK_FRAME_QUEUE_SZ) {
        APPL_TRACE_WARNING("Pkt dropped\n");
        return fixed_queue_length(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ);
    }

    APPL_TRACE_DEBUG("btc_a2dp_sink_enque_buf + ");


    if ((p_msg = (tBT_SBC_HDR *) osi_malloc(sizeof(tBT_SBC_HDR) +
                                            p_pkt->offset + p_pkt->len)) != ((void*)0)) {
        memcpy(p_msg, p_pkt, (sizeof(BT_HDR) + p_pkt->offset + p_pkt->len));
        p_msg->num_frames_to_be_processed = (*((UINT8 *)(p_msg + 1) + p_msg->offset)) & 0x0f;
        APPL_TRACE_VERBOSE("btc_a2dp_sink_enque_buf %d + \n", p_msg->num_frames_to_be_processed);
        fixed_queue_enqueue(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ, p_msg, FIXED_QUEUE_MAX_TIMEOUT);
        btc_a2dp_sink_data_post();
    } else {

        APPL_TRACE_WARNING("btc_a2dp_sink_enque_buf No Buffer left - ");
    }
    return fixed_queue_length(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ);
}
