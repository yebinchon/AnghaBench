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
typedef  int /*<<< orphan*/  tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATT_STATUS ;
typedef  int /*<<< orphan*/  tGATT_CLCB ;
typedef  int UINT8 ;
typedef  int /*<<< orphan*/ * UINT16 ;

/* Variables and functions */
 int GATT_NOT_FOUND ; 
#define  GATT_REQ_FIND_INFO 131 
#define  GATT_REQ_FIND_TYPE_VALUE 130 
#define  GATT_REQ_READ_BY_GRP_TYPE 129 
#define  GATT_REQ_READ_BY_TYPE 128 
 int /*<<< orphan*/  GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, UINT8 opcode,
                              UINT16 handle, UINT8 reason)
{
    tGATT_STATUS    status = (tGATT_STATUS) reason;

    FUNC2(p_tcb);
    FUNC2(handle);

    FUNC0("gatt_proc_disc_error_rsp reason: %02x cmd_code %04x", reason, opcode);

    switch (opcode) {
    case GATT_REQ_READ_BY_GRP_TYPE:
    case GATT_REQ_FIND_TYPE_VALUE:
    case GATT_REQ_READ_BY_TYPE:
    case GATT_REQ_FIND_INFO:
        if (reason == GATT_NOT_FOUND) {
            status = GATT_SUCCESS;
            FUNC0("Discovery completed");
        }
        break;
    default:
        FUNC1("Incorrect discovery opcode %04x",   opcode);
        break;
    }

    FUNC3(p_clcb, status, NULL);
}