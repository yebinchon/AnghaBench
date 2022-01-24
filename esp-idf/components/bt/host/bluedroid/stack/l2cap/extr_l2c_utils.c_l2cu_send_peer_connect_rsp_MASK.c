#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; int /*<<< orphan*/  p_lcb; int /*<<< orphan*/  remote_cid; int /*<<< orphan*/  local_cid; int /*<<< orphan*/  remote_id; } ;
typedef  TYPE_1__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int CCB_FLAG_SENT_PENDING ; 
 int HCI_DATA_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  L2CAP_CMD_CONN_RSP ; 
 int L2CAP_CMD_OVERHEAD ; 
 int /*<<< orphan*/  L2CAP_CONN_PENDING ; 
 int /*<<< orphan*/  L2CAP_CONN_RSP_LEN ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4 (tL2C_CCB *p_ccb, UINT16 result, UINT16 status)
{
    BT_HDR  *p_buf;
    UINT8   *p;

    if (result == L2CAP_CONN_PENDING) {
        /* if we already sent pending response */
        if (p_ccb->flags & CCB_FLAG_SENT_PENDING) {
            return;
        } else {
            p_ccb->flags |= CCB_FLAG_SENT_PENDING;
        }
    }

    if ((p_buf = FUNC3(p_ccb->p_lcb, L2CAP_CONN_RSP_LEN, L2CAP_CMD_CONN_RSP, p_ccb->remote_id)) == NULL) {
        FUNC0 ("L2CAP - no buffer for conn_rsp");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    FUNC1 (p, p_ccb->local_cid);
    FUNC1 (p, p_ccb->remote_cid);
    FUNC1 (p, result);
    FUNC1 (p, status);

    FUNC2 (p_ccb->p_lcb, NULL, p_buf);
}