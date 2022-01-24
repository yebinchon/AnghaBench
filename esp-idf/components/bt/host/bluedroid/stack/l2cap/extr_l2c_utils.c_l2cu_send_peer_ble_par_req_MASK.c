#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ tL2C_LCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int HCI_DATA_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  L2CAP_ADJ_ID ; 
 int /*<<< orphan*/  L2CAP_CMD_BLE_UPDATE_REQ ; 
 int /*<<< orphan*/  L2CAP_CMD_BLE_UPD_REQ_LEN ; 
 int L2CAP_CMD_OVERHEAD ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (tL2C_LCB *p_lcb, UINT16 min_int, UINT16 max_int,
                                 UINT16 latency, UINT16 timeout)
{
    BT_HDR  *p_buf;
    UINT8   *p;

    /* Create an identifier for this packet */
    p_lcb->id++;
    FUNC3 (p_lcb, L2CAP_ADJ_ID);

    if ((p_buf = FUNC4 (p_lcb, L2CAP_CMD_BLE_UPD_REQ_LEN,
                                    L2CAP_CMD_BLE_UPDATE_REQ, p_lcb->id)) == NULL ) {
        FUNC0 ("l2cu_send_peer_ble_par_req - no buffer");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    FUNC1 (p, min_int);
    FUNC1 (p, max_int);
    FUNC1 (p, latency);
    FUNC1 (p, timeout);

    FUNC2 (p_lcb, NULL, p_buf);
}