#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int num_frames_to_be_processed; int offset; } ;
typedef  TYPE_2__ tBT_SBC_HDR ;
typedef  int UINT8 ;
struct TYPE_9__ {scalar_t__ rx_flush; int /*<<< orphan*/  RxSbcQ; } ;
struct TYPE_12__ {TYPE_1__ btc_aa_snk_cb; } ;
struct TYPE_11__ {scalar_t__ len; scalar_t__ offset; } ;
typedef  TYPE_3__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ BTC_A2DP_SINK_STATE_ON ; 
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
 scalar_t__ MAX_OUTPUT_A2DP_SNK_FRAME_QUEUE_SZ ; 
 scalar_t__ TRUE ; 
 TYPE_8__ a2dp_sink_local_param ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ btc_a2dp_sink_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

UINT8 FUNC8(BT_HDR *p_pkt)
{
    tBT_SBC_HDR *p_msg;

    if (btc_a2dp_sink_state != BTC_A2DP_SINK_STATE_ON){
        return 0;
    }

    if (a2dp_sink_local_param.btc_aa_snk_cb.rx_flush == TRUE) { /* Flush enabled, do not enque*/
        return FUNC5(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ);
    }

    if (FUNC5(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ) >= MAX_OUTPUT_A2DP_SNK_FRAME_QUEUE_SZ) {
        FUNC2("Pkt dropped\n");
        return FUNC5(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ);
    }

    FUNC0("btc_a2dp_sink_enque_buf + ");

    /* allocate and Queue this buffer */
    if ((p_msg = (tBT_SBC_HDR *) FUNC7(sizeof(tBT_SBC_HDR) +
                                            p_pkt->offset + p_pkt->len)) != NULL) {
        FUNC6(p_msg, p_pkt, (sizeof(BT_HDR) + p_pkt->offset + p_pkt->len));
        p_msg->num_frames_to_be_processed = (*((UINT8 *)(p_msg + 1) + p_msg->offset)) & 0x0f;
        FUNC1("btc_a2dp_sink_enque_buf %d + \n", p_msg->num_frames_to_be_processed);
        FUNC4(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ, p_msg, FIXED_QUEUE_MAX_TIMEOUT);
        FUNC3();
    } else {
        /* let caller deal with a failed allocation */
        FUNC2("btc_a2dp_sink_enque_buf No Buffer left - ");
    }
    return FUNC5(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ);
}