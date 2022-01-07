
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_TCB ;
typedef int tGATT_IF ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 int FALSE ;
 scalar_t__ GATT_CH_OPEN ;
 int GATT_TRACE_ERROR (char*) ;
 int TRUE ;
 int gatt_disconnect (int *) ;
 int * gatt_find_tcb_by_addr (int ,int ) ;
 scalar_t__ gatt_get_ch_state (int *) ;
 int gatt_num_apps_hold_link (int *) ;
 int gatt_update_app_use_link_flag (int ,int *,int ,int ) ;

BOOLEAN gatt_cancel_open(tGATT_IF gatt_if, BD_ADDR bda)
{
    tGATT_TCB *p_tcb = ((void*)0);
    BOOLEAN status = TRUE;

    p_tcb = gatt_find_tcb_by_addr(bda, BT_TRANSPORT_LE);

    if (p_tcb) {
        if (gatt_get_ch_state(p_tcb) == GATT_CH_OPEN) {
            GATT_TRACE_ERROR("GATT_CancelConnect - link connected Too late to cancel");
            status = FALSE;
        } else {
            gatt_update_app_use_link_flag(gatt_if, p_tcb, FALSE, FALSE);
            if (!gatt_num_apps_hold_link(p_tcb)) {
                gatt_disconnect(p_tcb);
            }
        }
    }

    return status;
}
