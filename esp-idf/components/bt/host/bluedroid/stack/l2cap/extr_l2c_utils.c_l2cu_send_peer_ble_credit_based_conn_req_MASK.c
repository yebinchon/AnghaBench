#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ id; } ;
typedef  TYPE_3__ tL2C_LCB ;
struct TYPE_9__ {int /*<<< orphan*/  credits; int /*<<< orphan*/  mps; int /*<<< orphan*/  mtu; } ;
struct TYPE_12__ {int /*<<< orphan*/  local_cid; TYPE_2__* p_rcb; TYPE_1__ local_conn_cfg; TYPE_3__* p_lcb; scalar_t__ local_id; } ;
typedef  TYPE_4__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_10__ {int /*<<< orphan*/  real_psm; } ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int HCI_DATA_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  L2CAP_ADJ_ID ; 
 int /*<<< orphan*/  L2CAP_CMD_BLE_CREDIT_BASED_CONN_REQ ; 
 int /*<<< orphan*/  L2CAP_CMD_BLE_CREDIT_BASED_CONN_REQ_LEN ; 
 int L2CAP_CMD_OVERHEAD ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6 (tL2C_CCB *p_ccb)
{
    BT_HDR  *p_buf;
    UINT8   *p;
    tL2C_LCB *p_lcb = NULL;
    UINT16 mtu;
    UINT16 mps;
    UINT16 initial_credit;

    if (!p_ccb) {
        return;
    }
    p_lcb = p_ccb->p_lcb;

    /* Create an identifier for this packet */
    p_ccb->p_lcb->id++;
    FUNC4(p_ccb->p_lcb, L2CAP_ADJ_ID);

    p_ccb->local_id = p_ccb->p_lcb->id;

    if ((p_buf = FUNC5 (p_lcb, L2CAP_CMD_BLE_CREDIT_BASED_CONN_REQ_LEN,
                    L2CAP_CMD_BLE_CREDIT_BASED_CONN_REQ, p_lcb->id)) == NULL )
    {
        FUNC1 ("l2cu_send_peer_ble_credit_based_conn_req - no buffer");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
                               L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    mtu = p_ccb->local_conn_cfg.mtu;
    mps = p_ccb->local_conn_cfg.mps;
    initial_credit = p_ccb->local_conn_cfg.credits;

    FUNC0 ("l2cu_send_peer_ble_credit_based_conn_req PSM:0x%04x local_cid:%d\
                mtu:%d mps:%d initial_credit:%d", p_ccb->p_rcb->real_psm,\
                p_ccb->local_cid, mtu, mps, initial_credit);

    FUNC2 (p, p_ccb->p_rcb->real_psm);
    FUNC2 (p, p_ccb->local_cid);
    FUNC2 (p, mtu);
    FUNC2 (p, mps);
    FUNC2 (p, initial_credit);

    FUNC3 (p_lcb, NULL, p_buf);
}