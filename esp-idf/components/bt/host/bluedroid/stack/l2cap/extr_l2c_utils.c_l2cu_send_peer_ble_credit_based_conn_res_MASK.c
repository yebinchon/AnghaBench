#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  credits; int /*<<< orphan*/  mps; int /*<<< orphan*/  mtu; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_lcb; TYPE_1__ local_conn_cfg; int /*<<< orphan*/  local_cid; int /*<<< orphan*/  remote_id; } ;
typedef  TYPE_2__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int HCI_DATA_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  L2CAP_CMD_BLE_CREDIT_BASED_CONN_RES ; 
 int /*<<< orphan*/  L2CAP_CMD_BLE_CREDIT_BASED_CONN_RES_LEN ; 
 int L2CAP_CMD_OVERHEAD ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (tL2C_CCB *p_ccb, UINT16 result)
{
    BT_HDR  *p_buf;
    UINT8   *p;

    FUNC0 ("l2cu_send_peer_ble_credit_based_conn_res");
    if ((p_buf = FUNC4(p_ccb->p_lcb, L2CAP_CMD_BLE_CREDIT_BASED_CONN_RES_LEN,
                    L2CAP_CMD_BLE_CREDIT_BASED_CONN_RES, p_ccb->remote_id)) == NULL )
    {
        FUNC1 ("l2cu_send_peer_ble_credit_based_conn_res - no buffer");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
                               L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    FUNC2 (p, p_ccb->local_cid);                      /* Local CID */
    FUNC2 (p, p_ccb->local_conn_cfg.mtu);             /* MTU */
    FUNC2 (p, p_ccb->local_conn_cfg.mps);             /* MPS */
    FUNC2 (p, p_ccb->local_conn_cfg.credits);         /* initial credit */
    FUNC2 (p, result);

    FUNC3 (p_ccb->p_lcb, NULL, p_buf);
}