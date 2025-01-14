
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int conn_update_mask; int timer_entry; int upda_con_timer; void* current_used_conn_timeout; void* current_used_conn_latency; void* current_used_conn_interval; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef void* UINT8 ;
typedef int UINT32 ;
typedef void* UINT16 ;
struct TYPE_8__ {int * update_conn_param_cb; } ;


 int BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS ;
 int CalConnectParamTimeout (TYPE_1__*) ;
 void* HCI_SUCCESS ;
 int L2CAP_TRACE_DEBUG (char*,int ) ;
 int L2CAP_TRACE_WARNING (char*,void*) ;
 int L2C_BLE_UPDATE_PARAM_FULL ;
 int L2C_BLE_UPDATE_PENDING ;
 scalar_t__ TRUE ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 TYPE_5__ conn_param_update_cb ;
 int l2c_send_update_conn_params_cb (TYPE_1__*,void*) ;
 scalar_t__ l2cble_start_conn_update (TYPE_1__*) ;
 TYPE_1__* l2cu_find_lcb_by_handle (void*) ;

void l2cble_process_conn_update_evt (UINT16 handle, UINT8 status, UINT16 conn_interval,
                                                       UINT16 conn_latency, UINT16 conn_timeout)
{
    tL2C_LCB *p_lcb;


    p_lcb = l2cu_find_lcb_by_handle(handle);
    if (!p_lcb) {
        L2CAP_TRACE_WARNING("l2cble_process_conn_update_evt: Invalid handle: %d", handle);
        return;
    }
    if (status == HCI_SUCCESS){
        p_lcb->current_used_conn_interval = conn_interval;
        p_lcb->current_used_conn_latency = conn_latency;
        p_lcb->current_used_conn_timeout = conn_timeout;
    }else{
        L2CAP_TRACE_WARNING("l2cble_process_conn_update_evt: Error status: %d", status);
    }

    p_lcb->conn_update_mask &= ~L2C_BLE_UPDATE_PENDING;
    p_lcb->conn_update_mask &= ~L2C_BLE_UPDATE_PARAM_FULL;

    btu_stop_timer(&p_lcb->upda_con_timer);

    if (conn_param_update_cb.update_conn_param_cb != ((void*)0)) {
        l2c_send_update_conn_params_cb(p_lcb, status);
    }

    if (l2cble_start_conn_update(p_lcb) == TRUE) {
        UINT32 time = CalConnectParamTimeout(p_lcb);
        btu_start_timer(&p_lcb->upda_con_timer, BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS, time);
    }

    btu_stop_timer (&p_lcb->timer_entry);

    L2CAP_TRACE_DEBUG("l2cble_process_conn_update_evt: conn_update_mask=%d", p_lcb->conn_update_mask);
}
