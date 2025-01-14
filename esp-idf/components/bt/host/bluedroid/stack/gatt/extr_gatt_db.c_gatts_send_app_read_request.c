
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {int tcb_idx; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef int tGATT_STATUS ;
struct TYPE_14__ {int gatt_if; } ;
typedef TYPE_3__ tGATT_SR_REG ;
struct TYPE_12__ {void* need_rsp; void* offset; void* is_long; void* handle; } ;
struct TYPE_15__ {TYPE_1__ read_req; } ;
typedef TYPE_4__ tGATTS_DATA ;
typedef size_t UINT8 ;
typedef int UINT32 ;
typedef void* UINT16 ;
struct TYPE_11__ {TYPE_3__* sr_reg; } ;
typedef void* BOOLEAN ;


 int GATTS_REQ_TYPE_READ ;
 int GATT_BUSY ;
 void* GATT_CREATE_CONN_ID (int ,int ) ;
 int GATT_PENDING ;
 size_t GATT_REQ_READ_BLOB ;
 int GATT_STACK_RSP ;
 int TRUE ;
 TYPE_10__ gatt_cb ;
 int gatt_sr_enqueue_cmd (TYPE_2__*,size_t,void*) ;
 size_t gatt_sr_find_i_rcb_by_handle (void*) ;
 int gatt_sr_send_req_callback (void*,int ,int ,TYPE_4__*) ;
 int gatt_sr_update_cback_cnt (TYPE_2__*,int ,int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static tGATT_STATUS gatts_send_app_read_request(tGATT_TCB *p_tcb, UINT8 op_code,
        UINT16 handle, UINT16 offset, UINT32 trans_id, BOOLEAN need_rsp)
{
    tGATTS_DATA sr_data;
    UINT8 i_rcb;
    tGATT_SR_REG *p_sreg;
    UINT16 conn_id;

    i_rcb = gatt_sr_find_i_rcb_by_handle(handle);
    p_sreg = &gatt_cb.sr_reg[i_rcb];
    conn_id = GATT_CREATE_CONN_ID(p_tcb->tcb_idx, p_sreg->gatt_if);

    if (trans_id == 0) {
        trans_id = gatt_sr_enqueue_cmd(p_tcb, op_code, handle);
        gatt_sr_update_cback_cnt(p_tcb, p_sreg->gatt_if, TRUE, TRUE);
    }

    if (trans_id != 0 ) {
        memset(&sr_data, 0, sizeof(tGATTS_DATA));

        sr_data.read_req.handle = handle;
        sr_data.read_req.is_long = (BOOLEAN)(op_code == GATT_REQ_READ_BLOB);
        sr_data.read_req.offset = offset;
        sr_data.read_req.need_rsp = need_rsp;

        gatt_sr_send_req_callback(conn_id,
                                  trans_id, GATTS_REQ_TYPE_READ, &sr_data);

        if (need_rsp) {
            return (tGATT_STATUS) GATT_PENDING;
        }
        else{
            return (tGATT_STATUS) GATT_STACK_RSP;
        }
    } else {
        return (tGATT_STATUS) GATT_BUSY;
    }

}
