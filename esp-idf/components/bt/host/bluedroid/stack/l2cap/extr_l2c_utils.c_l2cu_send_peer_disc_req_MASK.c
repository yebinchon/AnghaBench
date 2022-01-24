#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ mode; } ;
struct TYPE_11__ {TYPE_1__ fcr; } ;
struct TYPE_12__ {TYPE_6__* p_lcb; int /*<<< orphan*/  xmit_hold_q; TYPE_2__ peer_cfg; int /*<<< orphan*/  local_cid; int /*<<< orphan*/  remote_cid; scalar_t__ local_id; } ;
typedef  TYPE_3__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_13__ {scalar_t__ id; } ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int HCI_DATA_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  L2CAP_ADJ_ID ; 
 int /*<<< orphan*/  L2CAP_CMD_DISC_REQ ; 
 int L2CAP_CMD_OVERHEAD ; 
 int /*<<< orphan*/  L2CAP_DISC_REQ_LEN ; 
 scalar_t__ L2CAP_FCR_BASIC_MODE ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 

void FUNC7 (tL2C_CCB *p_ccb)
{
    BT_HDR  *p_buf, *p_buf2;
    UINT8   *p;

    /* Create an identifier for this packet */
    p_ccb->p_lcb->id++;
    FUNC4(p_ccb->p_lcb, L2CAP_ADJ_ID);

    p_ccb->local_id = p_ccb->p_lcb->id;

    if ((p_buf = FUNC5(p_ccb->p_lcb, L2CAP_DISC_REQ_LEN, L2CAP_CMD_DISC_REQ, p_ccb->local_id)) == NULL) {
        FUNC0 ("L2CAP - no buffer for disc_req");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE + L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    FUNC1 (p, p_ccb->remote_cid);
    FUNC1 (p, p_ccb->local_cid);

    /* Move all queued data packets to the LCB. In FCR mode, assume the higher
       layer checks that all buffers are sent before disconnecting.
    */
    if (p_ccb->peer_cfg.fcr.mode == L2CAP_FCR_BASIC_MODE) {
        while ((p_buf2 = (BT_HDR *)FUNC2(p_ccb->xmit_hold_q, 0)) != NULL) {
            FUNC6 (p_buf2, p_ccb);
            FUNC3 (p_ccb->p_lcb, p_ccb, p_buf2);
        }
    }

    FUNC3 (p_ccb->p_lcb, NULL, p_buf);
}