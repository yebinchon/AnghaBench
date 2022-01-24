#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ mtu; } ;
struct TYPE_10__ {scalar_t__ cong_sent; int /*<<< orphan*/  buff_quota; int /*<<< orphan*/  xmit_hold_q; int /*<<< orphan*/  local_cid; TYPE_1__ peer_cfg; } ;
typedef  TYPE_2__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_11__ {scalar_t__ len; int /*<<< orphan*/  layer_specific; } ;
typedef  TYPE_3__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_DW_CONGESTED ; 
 int /*<<< orphan*/  L2CAP_DW_FAILED ; 
 int /*<<< orphan*/  L2CAP_DW_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CEVT_L2CA_DATA_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

UINT8 FUNC6 (UINT16 cid, BT_HDR *p_data, UINT16 flags)
{
    tL2C_CCB        *p_ccb;

    /* Find the channel control block. We don't know the link it is on. */
    if ((p_ccb = FUNC4 (NULL, cid)) == NULL) {
        FUNC1 ("L2CAP - no CCB for L2CA_DataWrite, CID: %d", cid);
        FUNC5 (p_data);
        return (L2CAP_DW_FAILED);
    }

#ifndef TESTER /* Tester may send any amount of data. otherwise sending message
                  bigger than mtu size of peer is a violation of protocol */
    if (p_data->len > p_ccb->peer_cfg.mtu) {
        FUNC1 ("L2CAP - CID: 0x%04x  cannot send message bigger than peer's mtu size", cid);
        FUNC5 (p_data);
        return (L2CAP_DW_FAILED);
    }
#endif

    /* channel based, packet based flushable or non-flushable */
    p_data->layer_specific = flags;

    /* If already congested, do not accept any more packets */
    if (p_ccb->cong_sent) {
        FUNC0 ("L2CAP - CID: 0x%04x cannot send, already congested  xmit_hold_q.count: %u  buff_quota: %u",
                           p_ccb->local_cid,
                           FUNC2(p_ccb->xmit_hold_q),
                           p_ccb->buff_quota);

        FUNC5 (p_data);
        return (L2CAP_DW_FAILED);
    }

    //counter_add("l2cap.dyn.tx.bytes", p_data->len);
    //counter_add("l2cap.dyn.tx.pkts", 1);

    FUNC3 (p_ccb, L2CEVT_L2CA_DATA_WRITE, p_data);

    if (p_ccb->cong_sent) {
        return (L2CAP_DW_CONGESTED);
    }
    return (L2CAP_DW_SUCCESS);
}