
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_24__ {int payload_size; } ;
typedef TYPE_8__ tGATT_TCB ;
struct TYPE_17__ {scalar_t__ uuid128; } ;
struct TYPE_18__ {scalar_t__ len; TYPE_1__ uu; } ;
struct TYPE_19__ {TYPE_2__ service_type; } ;
struct TYPE_20__ {TYPE_3__ incl_service; } ;
struct TYPE_16__ {TYPE_4__ value; } ;
struct TYPE_23__ {TYPE_10__ result; scalar_t__ wait_for_read_rsp; int next_disc_start_hdl; } ;
struct TYPE_25__ {scalar_t__ counter; scalar_t__ operation; scalar_t__ op_subtype; scalar_t__ p_attr_buf; TYPE_7__ read_uuid128; int conn_id; TYPE_6__* p_reg; int s_handle; } ;
typedef TYPE_9__ tGATT_CLCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_21__ {int (* p_disc_res_cb ) (int ,scalar_t__,TYPE_10__*) ;} ;
struct TYPE_22__ {TYPE_5__ app_cb; } ;


 scalar_t__ FALSE ;
 scalar_t__ GATTC_OPTYPE_DISCOVERY ;
 scalar_t__ GATTC_OPTYPE_READ ;
 scalar_t__ GATT_DISC_INC_SRVC ;
 int GATT_INVALID_PDU ;
 scalar_t__ GATT_MAX_ATTR_LEN ;
 int GATT_NO_RESOURCES ;
 scalar_t__ GATT_READ_BY_HANDLE ;
 int GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int GATT_TRACE_ERROR (char*,scalar_t__,scalar_t__) ;
 scalar_t__ LEN_UUID_128 ;
 int UNUSED (int ) ;
 int gatt_act_discovery (TYPE_9__*) ;
 int gatt_act_read (TYPE_9__*,scalar_t__) ;
 int gatt_end_operation (TYPE_9__*,int ,void*) ;
 int memcpy (scalar_t__,int *,scalar_t__) ;
 scalar_t__ osi_malloc (scalar_t__) ;
 int stub1 (int ,scalar_t__,TYPE_10__*) ;

void gatt_process_read_rsp(tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, UINT8 op_code,
                           UINT16 len, UINT8 *p_data)
{
    UINT16 offset = p_clcb->counter;
    UINT8 *p = p_data;

    UNUSED(op_code);

    if (p_clcb->operation == GATTC_OPTYPE_READ) {
        if (p_clcb->op_subtype != GATT_READ_BY_HANDLE) {
            p_clcb->counter = len;
            gatt_end_operation(p_clcb, GATT_SUCCESS, (void *)p);
        } else {


            if (!p_clcb->p_attr_buf) {
                p_clcb->p_attr_buf = (UINT8 *)osi_malloc(GATT_MAX_ATTR_LEN);
            }


            if (p_clcb->p_attr_buf && offset < GATT_MAX_ATTR_LEN) {
                if ((len + offset) > GATT_MAX_ATTR_LEN) {
                    len = GATT_MAX_ATTR_LEN - offset;
                }

                p_clcb->counter += len;

                memcpy(p_clcb->p_attr_buf + offset, p, len);



                if (len == (p_tcb->payload_size - 1) &&
                        len + offset < GATT_MAX_ATTR_LEN) {
                    GATT_TRACE_DEBUG("full pkt issue read blob for remianing bytes old offset=%d len=%d new offset=%d",
                                     offset, len, p_clcb->counter);
                    gatt_act_read(p_clcb, p_clcb->counter);
                } else {
                    gatt_end_operation(p_clcb, GATT_SUCCESS, (void *)p_clcb->p_attr_buf);
                }
            } else {
                GATT_TRACE_ERROR("attr offset = %d p_attr_buf = %p ", offset, p_clcb->p_attr_buf);
                gatt_end_operation(p_clcb, GATT_NO_RESOURCES, (void *)p_clcb->p_attr_buf);
            }
        }
    } else {
        if (p_clcb->operation == GATTC_OPTYPE_DISCOVERY &&
                p_clcb->op_subtype == GATT_DISC_INC_SRVC &&
                p_clcb->read_uuid128.wait_for_read_rsp ) {
            p_clcb->s_handle = p_clcb->read_uuid128.next_disc_start_hdl;
            p_clcb->read_uuid128.wait_for_read_rsp = FALSE;
            if (len == LEN_UUID_128) {

                memcpy(p_clcb->read_uuid128.result.value.incl_service.service_type.uu.uuid128, p, len);
                p_clcb->read_uuid128.result.value.incl_service.service_type.len = LEN_UUID_128;
                if ( p_clcb->p_reg->app_cb.p_disc_res_cb) {
                    (*p_clcb->p_reg->app_cb.p_disc_res_cb)(p_clcb->conn_id, p_clcb->op_subtype, &p_clcb->read_uuid128.result);
                }
                gatt_act_discovery(p_clcb) ;
            } else {
                gatt_end_operation(p_clcb, GATT_INVALID_PDU, (void *)p);
            }
        }
    }

}
