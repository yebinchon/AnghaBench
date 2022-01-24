#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  payload_size; } ;
typedef  TYPE_5__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATT_STATUS ;
struct TYPE_13__ {int /*<<< orphan*/  handles; int /*<<< orphan*/  num_handles; } ;
struct TYPE_12__ {int /*<<< orphan*/  value; int /*<<< orphan*/  len; int /*<<< orphan*/  handle; int /*<<< orphan*/  offset; } ;
struct TYPE_11__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  offset; } ;
struct TYPE_10__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  e_handle; int /*<<< orphan*/  s_handle; } ;
struct TYPE_15__ {TYPE_4__ read_multi; int /*<<< orphan*/  find_type_value; int /*<<< orphan*/  exec_write; TYPE_3__ attr_value; TYPE_2__ read_blob; int /*<<< orphan*/  handle; TYPE_1__ browse; int /*<<< orphan*/  mtu; } ;
typedef  TYPE_6__ tGATT_CL_MSG ;
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
#define  GATT_CMD_WRITE 141 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  GATT_HANDLE_VALUE_CONF 140 
 int /*<<< orphan*/  GATT_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  GATT_MAX_MTU_SIZE ; 
 int /*<<< orphan*/  GATT_NO_RESOURCES ; 
#define  GATT_REQ_EXEC_WRITE 139 
#define  GATT_REQ_FIND_INFO 138 
#define  GATT_REQ_FIND_TYPE_VALUE 137 
#define  GATT_REQ_MTU 136 
#define  GATT_REQ_PREPARE_WRITE 135 
#define  GATT_REQ_READ 134 
#define  GATT_REQ_READ_BLOB 133 
#define  GATT_REQ_READ_BY_GRP_TYPE 132 
#define  GATT_REQ_READ_BY_TYPE 131 
#define  GATT_REQ_READ_MULTI 130 
#define  GATT_REQ_WRITE 129 
#define  GATT_SIGN_CMD_WRITE 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

tGATT_STATUS FUNC11 (tGATT_TCB *p_tcb, UINT16 clcb_idx, UINT8 op_code, tGATT_CL_MSG *p_msg)
{
    tGATT_STATUS     status = GATT_NO_RESOURCES;
    BT_HDR          *p_cmd = NULL;
    UINT16          offset = 0, handle;

    if (p_tcb != NULL) {
        switch (op_code) {
        case GATT_REQ_MTU:
            if (p_msg->mtu <= GATT_MAX_MTU_SIZE) {
                p_tcb->payload_size = p_msg->mtu;
                p_cmd = FUNC5(GATT_REQ_MTU, p_msg->mtu);
            } else {
                status = GATT_ILLEGAL_PARAMETER;
            }
            break;

        case GATT_REQ_FIND_INFO:
        case GATT_REQ_READ_BY_TYPE:
        case GATT_REQ_READ_BY_GRP_TYPE:
            if (FUNC0 (p_msg->browse.s_handle) &&
                    FUNC0 (p_msg->browse.e_handle)  &&
                    p_msg->browse.s_handle <= p_msg->browse.e_handle) {
                p_cmd = FUNC2(op_code,
                                              p_msg->browse.s_handle,
                                              p_msg->browse.e_handle,
                                              p_msg->browse.uuid);
            } else {
                status = GATT_ILLEGAL_PARAMETER;
            }
            break;

        case GATT_REQ_READ_BLOB:
            offset = p_msg->read_blob.offset;
        /* fall through */
        case GATT_REQ_READ:
            handle = (op_code == GATT_REQ_READ) ? p_msg->handle : p_msg->read_blob.handle;
            /*  handle checking */
            if (FUNC0 (handle)) {
                p_cmd = FUNC4(op_code, handle, offset);
            } else {
                status = GATT_ILLEGAL_PARAMETER;
            }
            break;

        case GATT_HANDLE_VALUE_CONF:
            p_cmd = FUNC6(op_code);
            break;

        case GATT_REQ_PREPARE_WRITE:
            offset = p_msg->attr_value.offset;
        /* fall through */
        case GATT_REQ_WRITE:
        case GATT_CMD_WRITE:
        case GATT_SIGN_CMD_WRITE:
            if (FUNC0 (p_msg->attr_value.handle)) {
                p_cmd = FUNC9 (p_tcb->payload_size,
                                              op_code, p_msg->attr_value.handle,
                                              offset,
                                              p_msg->attr_value.len,
                                              p_msg->attr_value.value);
            } else {
                status = GATT_ILLEGAL_PARAMETER;
            }
            break;

        case GATT_REQ_EXEC_WRITE:
            p_cmd = FUNC3(op_code, p_msg->exec_write);
            break;

        case GATT_REQ_FIND_TYPE_VALUE:
            p_cmd = FUNC7(p_tcb->payload_size, &p_msg->find_type_value);
            break;

        case GATT_REQ_READ_MULTI:
            p_cmd = FUNC8(p_tcb->payload_size,
                                              p_msg->read_multi.num_handles,
                                              p_msg->read_multi.handles);
            break;

        default:
            break;
        }

        if (p_cmd != NULL) {
            status = FUNC10(p_tcb, clcb_idx, op_code, p_cmd);
        }

    } else {
        FUNC1("Peer device not connected");
    }

    return status;
}