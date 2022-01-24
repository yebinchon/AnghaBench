#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int payload_size; int /*<<< orphan*/  transport; int /*<<< orphan*/  peer_bda; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  scalar_t__ tGATT_STATUS ;
struct TYPE_13__ {int /*<<< orphan*/  p_db; } ;
typedef  TYPE_2__ tGATT_SR_REG ;
typedef  scalar_t__ UINT8 ;
typedef  int UINT16 ;
struct TYPE_14__ {int len; } ;
typedef  TYPE_3__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GATT_BUSY ; 
 scalar_t__ GATT_NO_RESOURCES ; 
 scalar_t__ GATT_PENDING ; 
 scalar_t__ GATT_REQ_READ_BLOB ; 
 scalar_t__ GATT_STACK_RSP ; 
 scalar_t__ GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int L2CAP_MIN_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int,int,scalar_t__*,int*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(tGATT_TCB *p_tcb, tGATT_SR_REG *p_rcb, UINT8 op_code,
                                   UINT16 handle, UINT16 len, UINT8 *p_data)
{
    UINT16       buf_len = (UINT16)(sizeof(BT_HDR) + p_tcb->payload_size + L2CAP_MIN_OFFSET);
    tGATT_STATUS reason;
    BT_HDR       *p_msg = NULL;
    UINT8        sec_flag, key_size, *p;
    UINT16       offset = 0, value_len = 0;

    FUNC2 (len);
    if ((p_msg =  (BT_HDR *)FUNC8(buf_len)) == NULL) {
        FUNC0("gatts_process_find_info failed. no resources.\n");

        reason = GATT_NO_RESOURCES;
    } else {
        if (op_code == GATT_REQ_READ_BLOB) {
            FUNC1(offset, p_data);
        }

        p = (UINT8 *)(p_msg + 1) + L2CAP_MIN_OFFSET;
        *p ++ = op_code + 1;
        p_msg->len = 1;
        buf_len = p_tcb->payload_size - 1;

        FUNC6(p_tcb->peer_bda,
                             p_tcb->transport,
                             &sec_flag,
                             &key_size);

        reason = FUNC7(p_tcb,
                 p_rcb->p_db,
                 op_code,
                 handle,
                 offset,
                 p,
                 &value_len,
                 buf_len,
                 sec_flag,
                 key_size,
                 0);

        p_msg->len += value_len;
    }


    if (reason != GATT_SUCCESS && reason != GATT_PENDING && reason != GATT_STACK_RSP) {
        if (p_msg) {
            FUNC9(p_msg);
        }

        /* in theroy BUSY is not possible(should already been checked), protected check */
        if (reason != GATT_BUSY) {
            FUNC5 (p_tcb, reason, op_code, handle, FALSE);
            FUNC4(p_tcb);
        }
    } else if (reason == GATT_SUCCESS || reason == GATT_STACK_RSP) {
        FUNC3(p_tcb, p_msg);
        FUNC4(p_tcb);
    } else {
        if (p_msg) {
            FUNC9(p_msg);
        }
    }

}