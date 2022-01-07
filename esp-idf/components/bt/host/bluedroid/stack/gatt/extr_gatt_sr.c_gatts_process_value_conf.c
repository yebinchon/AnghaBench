
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ indicate_handle; int tcb_idx; int conf_timer_ent; } ;
typedef TYPE_1__ tGATT_TCB ;
struct TYPE_10__ {scalar_t__ s_hdl; scalar_t__ e_hdl; int gatt_if; scalar_t__ in_use; } ;
typedef TYPE_2__ tGATT_SR_REG ;
struct TYPE_11__ {scalar_t__ handle; int member_0; } ;
typedef TYPE_3__ tGATTS_DATA ;
typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_12__ {TYPE_2__* sr_reg; } ;
typedef scalar_t__ BOOLEAN ;


 int GATTS_REQ_TYPE_CONF ;
 scalar_t__ GATT_CREATE_CONN_ID (int ,int ) ;
 scalar_t__ GATT_HANDLE_IS_VALID (scalar_t__) ;
 scalar_t__ GATT_MAX_SR_PROFILES ;
 int GATT_TRACE_ERROR (char*) ;
 int btu_stop_timer (int *) ;
 TYPE_8__ gatt_cb ;
 int gatt_sr_enqueue_cmd (TYPE_1__*,scalar_t__,scalar_t__) ;
 int gatt_sr_send_req_callback (scalar_t__,int ,int ,TYPE_3__*) ;
 scalar_t__ gatts_proc_ind_ack (TYPE_1__*,scalar_t__) ;

void gatts_process_value_conf(tGATT_TCB *p_tcb, UINT8 op_code)
{
    UINT16 handle = p_tcb->indicate_handle;
    UINT32 trans_id;
    UINT8 i;
    tGATT_SR_REG *p_rcb = gatt_cb.sr_reg;
    BOOLEAN continue_processing;
    UINT16 conn_id;

    btu_stop_timer (&p_tcb->conf_timer_ent);
    if (GATT_HANDLE_IS_VALID(handle)) {
        p_tcb->indicate_handle = 0;
        continue_processing = gatts_proc_ind_ack(p_tcb, handle);

        if (continue_processing) {
            for (i = 0; i < GATT_MAX_SR_PROFILES; i ++, p_rcb ++) {
                if (p_rcb->in_use && p_rcb->s_hdl <= handle && p_rcb->e_hdl >= handle) {
                    trans_id = gatt_sr_enqueue_cmd(p_tcb, op_code, handle);
                    conn_id = GATT_CREATE_CONN_ID(p_tcb->tcb_idx, p_rcb->gatt_if);
                    tGATTS_DATA p_data = {0};
                    p_data.handle = handle;
                    gatt_sr_send_req_callback(conn_id,
                                              trans_id, GATTS_REQ_TYPE_CONF, &p_data);
                }
            }
        }
    } else {
        GATT_TRACE_ERROR("unexpected handle value confirmation");
    }
}
