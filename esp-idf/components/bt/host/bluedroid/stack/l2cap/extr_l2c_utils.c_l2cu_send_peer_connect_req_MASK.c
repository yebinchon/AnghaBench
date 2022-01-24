#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* p_lcb; int /*<<< orphan*/  local_cid; TYPE_1__* p_rcb; scalar_t__ local_id; } ;
typedef  TYPE_2__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_7__ {int /*<<< orphan*/  real_psm; } ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int HCI_DATA_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  L2CAP_ADJ_ID ; 
 int /*<<< orphan*/  L2CAP_CMD_CONN_REQ ; 
 int L2CAP_CMD_OVERHEAD ; 
 int /*<<< orphan*/  L2CAP_CONN_REQ_LEN ; 
 int L2CAP_PKT_OVERHEAD ; 
 int L2CAP_SEND_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5 (tL2C_CCB *p_ccb)
{
    BT_HDR  *p_buf;
    UINT8   *p;

    /* Create an identifier for this packet */
    p_ccb->p_lcb->id++;
    FUNC3(p_ccb->p_lcb, L2CAP_ADJ_ID);

    p_ccb->local_id = p_ccb->p_lcb->id;

    if ((p_buf = FUNC4 (p_ccb->p_lcb, L2CAP_CONN_REQ_LEN, L2CAP_CMD_CONN_REQ,
                                    p_ccb->local_id)) == NULL) {
        FUNC0 ("L2CAP - no buffer for conn_req");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    FUNC1 (p, p_ccb->p_rcb->real_psm);
    FUNC1 (p, p_ccb->local_cid);

    FUNC2 (p_ccb->p_lcb, NULL, p_buf);
}