#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tL2C_LCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int HCI_DATA_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  L2CAP_CMD_CONN_RSP ; 
 int L2CAP_CMD_OVERHEAD ; 
 int /*<<< orphan*/  L2CAP_CONN_RSP_LEN ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4 (tL2C_LCB *p_lcb, UINT16 remote_cid, UINT8 rem_id, UINT16 result)
{
    BT_HDR  *p_buf;
    UINT8   *p;

    if ((p_buf = FUNC3(p_lcb, L2CAP_CONN_RSP_LEN, L2CAP_CMD_CONN_RSP, rem_id)) == NULL ) {
        FUNC0 ("L2CAP - no buffer for conn_req");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE + L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    FUNC1 (p, 0);                    /* Local CID of 0   */
    FUNC1 (p, remote_cid);
    FUNC1 (p, result);
    FUNC1 (p, 0);                    /* Status of 0      */

    FUNC2 (p_lcb, NULL, p_buf);
}