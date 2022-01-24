#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_TCB ;
typedef  scalar_t__ tGATT_STATUS ;
struct TYPE_7__ {int s_hdl; int e_hdl; TYPE_1__* p_db; scalar_t__ in_use; } ;
typedef  TYPE_2__ tGATT_SR_REG ;
struct TYPE_8__ {int handle; scalar_t__ p_next; } ;
typedef  TYPE_3__ tGATT_ATTR16 ;
typedef  scalar_t__ UINT8 ;
typedef  int UINT16 ;
struct TYPE_9__ {int handle; scalar_t__ req_op_code; scalar_t__ err_status; scalar_t__ enable_err_rsp; TYPE_2__* sr_reg; } ;
struct TYPE_6__ {scalar_t__ p_attr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  GATT_CMD_WRITE 133 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ GATT_INVALID_HANDLE ; 
 scalar_t__ GATT_INVALID_PDU ; 
 scalar_t__ GATT_MAX_SR_PROFILES ; 
#define  GATT_REQ_PREPARE_WRITE 132 
#define  GATT_REQ_READ 131 
#define  GATT_REQ_READ_BLOB 130 
#define  GATT_REQ_WRITE 129 
#define  GATT_SIGN_CMD_WRITE 128 
 scalar_t__ GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,int,scalar_t__*) ; 
 TYPE_5__ gatt_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,int,scalar_t__*) ; 

void FUNC8 (tGATT_TCB *p_tcb, UINT8 op_code,
                                  UINT16 len, UINT8 *p_data)
{
    UINT16          handle = 0;
    UINT8           *p = p_data, i;
    tGATT_SR_REG    *p_rcb = gatt_cb.sr_reg;
    tGATT_STATUS    status = GATT_INVALID_HANDLE;
    tGATT_ATTR16    *p_attr;

    if (len < 2) {
        FUNC2("Illegal PDU length, discard request\n");
        status = GATT_INVALID_PDU;
    } else {
        FUNC3(handle, p);
        len -= 2;
    }

#if GATT_CONFORMANCE_TESTING == TRUE
    gatt_cb.handle = handle;
    if (gatt_cb.enable_err_rsp && gatt_cb.req_op_code == op_code) {
        FUNC1("Conformance tst: forced err rsp: error status=%d\n", gatt_cb.err_status);

        FUNC5 (p_tcb, gatt_cb.err_status, gatt_cb.req_op_code, handle, FALSE);

        return;
    }
#endif

    if (FUNC0(handle)) {
        for (i = 0; i < GATT_MAX_SR_PROFILES; i ++, p_rcb ++) {
            if (p_rcb->in_use && p_rcb->s_hdl <= handle && p_rcb->e_hdl >= handle) {
                p_attr = (tGATT_ATTR16 *)p_rcb->p_db->p_attr_list;

                while (p_attr) {
                    if (p_attr->handle == handle) {
                        switch (op_code) {
                        case GATT_REQ_READ: /* read char/char descriptor value */
                        case GATT_REQ_READ_BLOB:
                            FUNC6(p_tcb, p_rcb, op_code, handle, len, p);
                            break;

                        case GATT_REQ_WRITE: /* write char/char descriptor value */
                        case GATT_CMD_WRITE:
                        case GATT_SIGN_CMD_WRITE:
                            FUNC7(p_tcb, i, handle, op_code, len, p);
                            break;
                        
                        case GATT_REQ_PREPARE_WRITE:
                            FUNC4 (p_tcb, i, handle, op_code, len, p);
                        default:
                            break;
                        }
                        status = GATT_SUCCESS;
                        break;
                    }
                    p_attr = (tGATT_ATTR16 *)p_attr->p_next;
                }
                break;
            }
        }
    }

    if (status != GATT_SUCCESS && op_code != GATT_CMD_WRITE && op_code != GATT_SIGN_CMD_WRITE) {
        FUNC5 (p_tcb, status, op_code, handle, FALSE);
    }
}