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
struct TYPE_6__ {int /*<<< orphan*/  info_timer_entry; int /*<<< orphan*/  w4_info_rsp; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ tL2C_LCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_INFO ; 
 int HCI_DATA_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  L2CAP_ADJ_ID ; 
 int /*<<< orphan*/  L2CAP_CMD_INFO_REQ ; 
 int L2CAP_CMD_OVERHEAD ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  L2CAP_WAIT_INFO_RSP_TOUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7 (tL2C_LCB *p_lcb, UINT16 info_type)
{
    BT_HDR  *p_buf;
    UINT8   *p;

    /* check for wrap and/or BRCM ID */
    p_lcb->id++;
    FUNC5(p_lcb, L2CAP_ADJ_ID);

    if ((p_buf = FUNC6(p_lcb, 2, L2CAP_CMD_INFO_REQ, p_lcb->id)) == NULL) {
        FUNC1 ("L2CAP - no buffer for info_req");
        return;
    }

    FUNC0 ("l2cu_send_peer_info_req: type 0x%04x", info_type);

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    FUNC2 (p, info_type);

    p_lcb->w4_info_rsp = TRUE;
    FUNC3 (&p_lcb->info_timer_entry, BTU_TTYPE_L2CAP_INFO, L2CAP_WAIT_INFO_RSP_TOUT);

    FUNC4 (p_lcb, NULL, p_buf);
}