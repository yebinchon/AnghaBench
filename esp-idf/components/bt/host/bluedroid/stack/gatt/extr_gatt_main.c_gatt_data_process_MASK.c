#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_TCB ;
typedef  int UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_5__ {int offset; scalar_t__ len; } ;
typedef  TYPE_1__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int GATT_COMMAND_FLAG ; 
 int GATT_OP_CODE_MAX ; 
 int /*<<< orphan*/  GATT_REQ_NOT_SUPPORTED ; 
 int GATT_SIGN_CMD_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int GATT_WRITE_CMD_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7 (tGATT_TCB *p_tcb, BT_HDR *p_buf)
{
    UINT8   *p = (UINT8 *)(p_buf + 1) + p_buf->offset;
    UINT8   op_code, pseudo_op_code;
#if (GATTS_INCLUDED == TRUE) || (GATTC_INCLUDED == TRUE)
    UINT16  msg_len;
#endif ///(GATTS_INCLUDED == TRUE) || (GATTC_INCLUDED == TRUE)


    if (p_buf->len > 0) {
#if (GATTS_INCLUDED == TRUE) || (GATTC_INCLUDED == TRUE)
        msg_len = p_buf->len - 1;
#endif ///(GATTS_INCLUDED == TRUE) || (GATTC_INCLUDED == TRUE)
        FUNC1(op_code, p);

        /* remove the two MSBs associated with sign write and write cmd */
        pseudo_op_code = op_code & (~GATT_WRITE_CMD_MASK);

        if (pseudo_op_code < GATT_OP_CODE_MAX) {
            if (op_code == GATT_SIGN_CMD_WRITE) {
#if (SMP_INCLUDED == TRUE)
                FUNC5(p_tcb, p_buf);
#endif  ///SMP_INCLUDED == TRUE
            } else {
                /* message from client */
                if ((op_code % 2) == 0) {
#if (GATTS_INCLUDED == TRUE)
                    FUNC4 (p_tcb, op_code, msg_len, p);
#endif  ///GATTS_INCLUDED == TRUE
                } else {
#if (GATTC_INCLUDED == TRUE)
                    FUNC2 (p_tcb, op_code, msg_len, p);
#endif  ///GATTC_INCLUDED == TRUE
                }
            }
        } else {
            if (op_code & GATT_COMMAND_FLAG) {
                FUNC0 ("ATT - Rcvd L2CAP data, unknown cmd: 0x%x\n", op_code);
            } else {
                FUNC0 ("ATT - Rcvd L2CAP data, unknown req: 0x%x\n", op_code);
                FUNC3 (p_tcb, GATT_REQ_NOT_SUPPORTED, op_code, 0, FALSE);
            }
        }
    } else {
        FUNC0 ("invalid data length, ignore\n");
    }

    FUNC6 (p_buf);
}