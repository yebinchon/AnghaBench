
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_BLE_SEL_CBACK ;
typedef int tBTM_BLE_CONN_TYPE ;
struct TYPE_4__ {int bg_conn_type; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_5__ {int (* supports_ble ) () ;} ;
typedef scalar_t__ BOOLEAN ;





 int BTM_TRACE_ERROR (char*,int) ;
 int BTM_TRACE_EVENT (char*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int btm_ble_start_auto_conn (scalar_t__) ;
 int btm_ble_start_select_conn (scalar_t__,int *) ;
 TYPE_3__ btm_cb ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

BOOLEAN BTM_BleSetBgConnType(tBTM_BLE_CONN_TYPE bg_conn_type,
                             tBTM_BLE_SEL_CBACK *p_select_cback)
{
    BOOLEAN started = TRUE;

    BTM_TRACE_EVENT ("BTM_BleSetBgConnType ");
    if (!controller_get_interface()->supports_ble()) {
        return FALSE;
    }

    if (btm_cb.ble_ctr_cb.bg_conn_type != bg_conn_type) {
        switch (bg_conn_type) {
        case 130:
            btm_ble_start_auto_conn(TRUE);
            break;

        case 128:
            if (btm_cb.ble_ctr_cb.bg_conn_type == 130) {
                btm_ble_start_auto_conn(FALSE);
            }
            btm_ble_start_select_conn(TRUE, p_select_cback);
            break;

        case 129:
            if (btm_cb.ble_ctr_cb.bg_conn_type == 130) {
                btm_ble_start_auto_conn(FALSE);
            } else if (btm_cb.ble_ctr_cb.bg_conn_type == 128) {
                btm_ble_start_select_conn(FALSE, ((void*)0));
            }
            started = TRUE;
            break;

        default:
            BTM_TRACE_ERROR("invalid bg connection type : %d ", bg_conn_type);
            started = FALSE;
            break;
        }

        if (started) {
            btm_cb.ble_ctr_cb.bg_conn_type = bg_conn_type;
        }
    }
    return started;
}
