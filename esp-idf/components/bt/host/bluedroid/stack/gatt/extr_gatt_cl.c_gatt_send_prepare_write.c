
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; scalar_t__ offset; scalar_t__ value; int handle; } ;
typedef TYPE_1__ tGATT_VALUE ;
struct TYPE_9__ {scalar_t__ payload_size; } ;
typedef TYPE_2__ tGATT_TCB ;
struct TYPE_10__ {scalar_t__ op_subtype; scalar_t__ start_offset; scalar_t__ counter; int clcb_idx; int s_handle; scalar_t__ p_attr_buf; } ;
typedef TYPE_3__ tGATT_CLCB ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;


 scalar_t__ GATT_CMD_STARTED ;
 int GATT_REQ_PREPARE_WRITE ;
 scalar_t__ GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*,scalar_t__,...) ;
 scalar_t__ GATT_WRITE_LONG_HDR_SIZE ;
 scalar_t__ GATT_WRITE_PREPARE ;
 int gatt_end_operation (TYPE_3__*,scalar_t__,int *) ;
 scalar_t__ gatt_send_write_msg (TYPE_2__*,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;

void gatt_send_prepare_write(tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb)
{
    tGATT_VALUE *p_attr = (tGATT_VALUE *)p_clcb->p_attr_buf;
    UINT16 to_send, offset;
    UINT8 rt = GATT_SUCCESS;
    UINT8 type = p_clcb->op_subtype;

    GATT_TRACE_DEBUG("gatt_send_prepare_write type=0x%x", type );
    to_send = p_attr->len - p_attr->offset;

    if (to_send > (p_tcb->payload_size - GATT_WRITE_LONG_HDR_SIZE)) {
        to_send = p_tcb->payload_size - GATT_WRITE_LONG_HDR_SIZE;
    }

    p_clcb->s_handle = p_attr->handle;

    offset = p_attr->offset;
    if (type == GATT_WRITE_PREPARE) {
        offset += p_clcb->start_offset;
    }

    GATT_TRACE_DEBUG("offset =0x%x len=%d", offset, to_send );

    rt = gatt_send_write_msg(p_tcb,
                             p_clcb->clcb_idx,
                             GATT_REQ_PREPARE_WRITE,
                             p_attr->handle,
                             to_send,
                             offset,
                             p_attr->value + p_attr->offset);


    p_clcb->counter = to_send;

    if (rt != GATT_SUCCESS && rt != GATT_CMD_STARTED) {
        gatt_end_operation(p_clcb, rt, ((void*)0));
    }
}
