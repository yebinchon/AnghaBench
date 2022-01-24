#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ handle; } ;
typedef  TYPE_1__ tGATT_VALUE ;
typedef  int /*<<< orphan*/  tGATT_TCB ;
struct TYPE_8__ {scalar_t__ operation; scalar_t__ op_subtype; scalar_t__ p_attr_buf; scalar_t__ first_read_blob_after_read; scalar_t__ status; } ;
typedef  TYPE_2__ tGATT_CLCB ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;

/* Variables and functions */
 scalar_t__ GATTC_OPTYPE_DISCOVERY ; 
 scalar_t__ GATTC_OPTYPE_READ ; 
 scalar_t__ GATTC_OPTYPE_WRITE ; 
 scalar_t__ GATT_ERROR ; 
 scalar_t__ GATT_NOT_LONG ; 
 int /*<<< orphan*/  GATT_PREP_WRITE_CANCEL ; 
 scalar_t__ GATT_READ_BY_HANDLE ; 
 scalar_t__ GATT_READ_CHAR_VALUE_HDL ; 
 scalar_t__ GATT_REQ_PREPARE_WRITE ; 
 scalar_t__ GATT_REQ_READ_BLOB ; 
 scalar_t__ GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ GATT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC7(tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, UINT8 op_code,
                            UINT16 len, UINT8 *p_data)
{
    UINT8   opcode, reason, * p = p_data;
    UINT16  handle;
    tGATT_VALUE  *p_attr = (tGATT_VALUE *)p_clcb->p_attr_buf;

    FUNC3(op_code);
    FUNC3(len);

    FUNC0("gatt_process_error_rsp ");
    FUNC2(opcode, p);
    FUNC1(handle, p);
    FUNC2(reason, p);

    if (p_clcb->operation == GATTC_OPTYPE_DISCOVERY) {
        FUNC5(p_tcb, p_clcb, opcode, handle, reason);
    } else {
        if ( (p_clcb->operation == GATTC_OPTYPE_WRITE) &&
                (p_clcb->op_subtype == GATT_WRITE) &&
                (opcode == GATT_REQ_PREPARE_WRITE) &&
                (p_attr) &&
                (handle == p_attr->handle)  ) {
            if (reason == GATT_SUCCESS){
               reason = GATT_ERROR;
            }
            p_clcb->status = reason;
            FUNC6(p_tcb, p_clcb, GATT_PREP_WRITE_CANCEL);
        } else if ((p_clcb->operation == GATTC_OPTYPE_READ) &&
                   ((p_clcb->op_subtype == GATT_READ_CHAR_VALUE_HDL) ||
                    (p_clcb->op_subtype == GATT_READ_BY_HANDLE)) &&
                   (opcode == GATT_REQ_READ_BLOB) &&
                   p_clcb->first_read_blob_after_read &&
                   (reason == GATT_NOT_LONG)) {
            FUNC4(p_clcb, GATT_SUCCESS, (void *)p_clcb->p_attr_buf);
        } else {
            FUNC4(p_clcb, reason, NULL);
        }
    }
}