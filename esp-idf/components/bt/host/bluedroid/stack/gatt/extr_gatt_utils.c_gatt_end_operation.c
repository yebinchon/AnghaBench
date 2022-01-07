
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int handle; scalar_t__ len; int value; } ;
typedef TYPE_4__ tGATT_VALUE ;
typedef int tGATT_STATUS ;
typedef int (* tGATT_DISC_CMPL_CB ) (int ,scalar_t__,int ) ;
typedef int (* tGATT_CMPL_CBACK ) (int ,scalar_t__,int ,TYPE_5__*) ;
struct TYPE_17__ {int mtu; TYPE_4__ att_value; int handle; } ;
typedef TYPE_5__ tGATT_CL_COMPLETE ;
struct TYPE_18__ {scalar_t__ operation; scalar_t__ op_subtype; int rsp_timer_ent; int conn_id; scalar_t__ p_attr_buf; TYPE_3__* p_tcb; int s_handle; scalar_t__ counter; TYPE_2__* p_reg; } ;
typedef TYPE_7__ tGATT_CLCB ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_15__ {int payload_size; } ;
struct TYPE_13__ {int (* p_disc_cmpl_cb ) (int ,scalar_t__,int ) ;int (* p_cmpl_cb ) (int ,scalar_t__,int ,TYPE_5__*) ;} ;
struct TYPE_14__ {TYPE_1__ app_cb; } ;


 scalar_t__ GATTC_OPTYPE_CONFIG ;
 scalar_t__ GATTC_OPTYPE_DISCOVERY ;
 scalar_t__ GATTC_OPTYPE_READ ;
 scalar_t__ GATTC_OPTYPE_WRITE ;
 scalar_t__ GATT_DISC_MAX ;
 int GATT_TRACE_DEBUG (char*,...) ;
 int GATT_TRACE_WARNING (char*,scalar_t__,int (*) (int ,scalar_t__,int ),int (*) (int ,scalar_t__,int ,TYPE_5__*)) ;
 scalar_t__ GATT_WRITE_PREPARE ;
 int btu_stop_timer (int *) ;
 int gatt_clcb_dealloc (TYPE_7__*) ;
 int memcpy (int ,void*,scalar_t__) ;
 int memset (TYPE_4__*,int ,int) ;
 int osi_free (scalar_t__) ;
 int stub1 (int ,scalar_t__,int ) ;
 int stub2 (int ,scalar_t__,int ,TYPE_5__*) ;

void gatt_end_operation(tGATT_CLCB *p_clcb, tGATT_STATUS status, void *p_data)
{
    tGATT_CL_COMPLETE cb_data;
    tGATT_CMPL_CBACK *p_cmpl_cb = (p_clcb->p_reg) ? p_clcb->p_reg->app_cb.p_cmpl_cb : ((void*)0);
    UINT8 op = p_clcb->operation, disc_type = GATT_DISC_MAX;
    tGATT_DISC_CMPL_CB *p_disc_cmpl_cb = (p_clcb->p_reg) ? p_clcb->p_reg->app_cb.p_disc_cmpl_cb : ((void*)0);
    UINT16 conn_id;

    UINT8 operation;


    GATT_TRACE_DEBUG ("gatt_end_operation status=%d op=%d subtype=%d",
                      status, p_clcb->operation, p_clcb->op_subtype);
    memset(&cb_data.att_value, 0, sizeof(tGATT_VALUE));

    if (p_cmpl_cb != ((void*)0) && p_clcb->operation != 0) {
        if (p_clcb->operation == GATTC_OPTYPE_READ) {
            cb_data.att_value.handle = p_clcb->s_handle;
            cb_data.att_value.len = p_clcb->counter;

            if (p_data && p_clcb->counter) {
                memcpy (cb_data.att_value.value, p_data, cb_data.att_value.len);
            }
        }

        if (p_clcb->operation == GATTC_OPTYPE_WRITE) {
            memset(&cb_data.att_value, 0, sizeof(tGATT_VALUE));
            cb_data.handle =
                cb_data.att_value.handle = p_clcb->s_handle;
            if (p_clcb->op_subtype == GATT_WRITE_PREPARE) {
                if (p_data) {
                    cb_data.att_value = *((tGATT_VALUE *) p_data);
                } else {
                    GATT_TRACE_DEBUG("Rcv Prepare write rsp but no data");
                }
            }
        }

        if (p_clcb->operation == GATTC_OPTYPE_CONFIG) {
            cb_data.mtu = p_clcb->p_tcb->payload_size;
        }

        if (p_clcb->operation == GATTC_OPTYPE_DISCOVERY) {
            disc_type = p_clcb->op_subtype;
        }
    }

    if (p_clcb->p_attr_buf) {
        osi_free(p_clcb->p_attr_buf);
    }


    operation = p_clcb->operation;


    conn_id = p_clcb->conn_id;
    btu_stop_timer(&p_clcb->rsp_timer_ent);

    gatt_clcb_dealloc(p_clcb);

    if (p_disc_cmpl_cb && (op == GATTC_OPTYPE_DISCOVERY)) {
        (*p_disc_cmpl_cb)(conn_id, disc_type, status);
    } else if (p_cmpl_cb && op) {
        (*p_cmpl_cb)(conn_id, op, status, &cb_data);
    } else {
        GATT_TRACE_WARNING ("gatt_end_operation not sent out op=%d p_disc_cmpl_cb:%p p_cmpl_cb:%p",
                            operation, p_disc_cmpl_cb, p_cmpl_cb);
    }
}
