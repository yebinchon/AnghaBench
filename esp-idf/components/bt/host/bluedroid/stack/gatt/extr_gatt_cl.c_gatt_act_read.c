
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tGATT_TCB ;
typedef int tGATT_READ_MULTI ;
struct TYPE_11__ {int uuid16; } ;
struct TYPE_16__ {TYPE_1__ uu; int len; } ;
struct TYPE_13__ {void* offset; int handle; } ;
struct TYPE_12__ {TYPE_7__ uuid; int e_handle; int s_handle; } ;
struct TYPE_14__ {int handle; TYPE_7__ read_multi; TYPE_3__ read_blob; TYPE_2__ browse; } ;
typedef TYPE_4__ tGATT_CL_MSG ;
struct TYPE_15__ {int op_subtype; int clcb_idx; int s_handle; int * p_attr_buf; int first_read_blob_after_read; int counter; int uuid; int e_handle; int * p_tcb; } ;
typedef TYPE_5__ tGATT_CLCB ;
typedef int tBT_UUID ;
typedef scalar_t__ UINT8 ;
typedef void* UINT16 ;


 int FALSE ;
 scalar_t__ GATT_CMD_STARTED ;
 scalar_t__ GATT_INTERNAL_ERROR ;







 scalar_t__ GATT_REQ_READ ;
 scalar_t__ GATT_REQ_READ_BLOB ;
 scalar_t__ GATT_REQ_READ_BY_TYPE ;
 scalar_t__ GATT_REQ_READ_MULTI ;
 scalar_t__ GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*,int ) ;
 int GATT_TRACE_ERROR (char*,int) ;
 int GATT_UUID_CHAR_DECLARE ;
 int LEN_UUID_16 ;
 int TRUE ;
 scalar_t__ attp_send_cl_msg (int *,int ,scalar_t__,TYPE_4__*) ;
 int gatt_end_operation (TYPE_5__*,scalar_t__,int *) ;
 int memcpy (TYPE_7__*,int *,int) ;
 int memset (TYPE_4__*,int ,int) ;

void gatt_act_read (tGATT_CLCB *p_clcb, UINT16 offset)
{
    tGATT_TCB *p_tcb = p_clcb->p_tcb;
    UINT8 rt = GATT_INTERNAL_ERROR;
    tGATT_CL_MSG msg;
    UINT8 op_code = 0;

    memset (&msg, 0, sizeof(tGATT_CL_MSG));

    switch (p_clcb->op_subtype) {
    case 132:
    case 133:
        op_code = GATT_REQ_READ_BY_TYPE;
        msg.browse.s_handle = p_clcb->s_handle;
        msg.browse.e_handle = p_clcb->e_handle;
        if (p_clcb->op_subtype == 133) {
            memcpy(&msg.browse.uuid, &p_clcb->uuid, sizeof(tBT_UUID));
        } else {
            msg.browse.uuid.len = LEN_UUID_16;
            msg.browse.uuid.uu.uuid16 = GATT_UUID_CHAR_DECLARE;
        }
        break;

    case 131:
    case 134:
        if (!p_clcb->counter) {
            op_code = GATT_REQ_READ;
            msg.handle = p_clcb->s_handle;
        } else {
            if (!p_clcb->first_read_blob_after_read) {
                p_clcb->first_read_blob_after_read = TRUE;
            } else {
                p_clcb->first_read_blob_after_read = FALSE;
            }

            GATT_TRACE_DEBUG("gatt_act_read first_read_blob_after_read=%d",
                             p_clcb->first_read_blob_after_read);
            op_code = GATT_REQ_READ_BLOB;
            msg.read_blob.offset = offset;
            msg.read_blob.handle = p_clcb->s_handle;
        }
        p_clcb->op_subtype &= ~ 0x80;
        break;

    case 128:
        op_code = GATT_REQ_READ_BLOB;
        msg.read_blob.handle = p_clcb->s_handle;
        msg.read_blob.offset = offset;
        break;

    case 129:
        op_code = GATT_REQ_READ_MULTI;
        memcpy (&msg.read_multi, p_clcb->p_attr_buf, sizeof(tGATT_READ_MULTI));
        break;

    case 130:
        op_code = GATT_REQ_READ;
        msg.handle = p_clcb->s_handle;
        p_clcb->op_subtype &= ~ 0x90;
        break;

    default:
        GATT_TRACE_ERROR("Unknown read type: %d", p_clcb->op_subtype);
        break;
    }

    if (op_code != 0) {
        rt = attp_send_cl_msg(p_tcb, p_clcb->clcb_idx, op_code, &msg);
    }

    if ( op_code == 0 || (rt != GATT_SUCCESS && rt != GATT_CMD_STARTED)) {
        gatt_end_operation(p_clcb, rt, ((void*)0));
    }
}
