
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tGATT_TCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_2__ {scalar_t__ handle_of_h_r; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int GATT_TRACE_DEBUG (char*,scalar_t__) ;
 int TRUE ;
 TYPE_1__ gatt_cb ;
 int gatts_chk_pending_ind (int *) ;
 int gatts_proc_srv_chg_ind_ack (int *) ;

__attribute__((used)) static BOOLEAN gatts_proc_ind_ack(tGATT_TCB *p_tcb, UINT16 ack_handle)
{
    BOOLEAN continue_processing = TRUE;

    GATT_TRACE_DEBUG ("gatts_proc_ind_ack ack handle=%d", ack_handle);

    if (ack_handle == gatt_cb.handle_of_h_r) {
        gatts_proc_srv_chg_ind_ack(p_tcb);

        continue_processing = FALSE;
    }

    gatts_chk_pending_ind(p_tcb);
    return continue_processing;
}
