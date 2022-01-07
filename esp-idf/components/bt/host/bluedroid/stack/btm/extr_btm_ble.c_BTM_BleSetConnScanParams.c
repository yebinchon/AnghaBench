
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scan_int; scalar_t__ scan_win; scalar_t__ conn_state; } ;
typedef TYPE_1__ tBTM_BLE_CB ;
typedef scalar_t__ UINT32 ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BLE_BG_CONN ;
 scalar_t__ BTM_BLE_ISVALID_PARAM (scalar_t__,int ,int ) ;
 int BTM_BLE_SCAN_INT_MAX ;
 int BTM_BLE_SCAN_INT_MIN ;
 int BTM_BLE_SCAN_WIN_MAX ;
 int BTM_BLE_SCAN_WIN_MIN ;
 int BTM_TRACE_ERROR (char*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int btm_ble_suspend_bg_conn () ;
 TYPE_2__ btm_cb ;

void BTM_BleSetConnScanParams (UINT32 scan_interval, UINT32 scan_window)
{

    tBTM_BLE_CB *p_ble_cb = &btm_cb.ble_ctr_cb;
    BOOLEAN new_param = FALSE;

    if (BTM_BLE_ISVALID_PARAM(scan_interval, BTM_BLE_SCAN_INT_MIN, BTM_BLE_SCAN_INT_MAX) &&
            BTM_BLE_ISVALID_PARAM(scan_window, BTM_BLE_SCAN_WIN_MIN, BTM_BLE_SCAN_WIN_MAX)) {
        if (p_ble_cb->scan_int != scan_interval) {
            p_ble_cb->scan_int = scan_interval;
            new_param = TRUE;
        }

        if (p_ble_cb->scan_win != scan_window) {
            p_ble_cb->scan_win = scan_window;
            new_param = TRUE;
        }

        if (new_param && p_ble_cb->conn_state == BLE_BG_CONN) {
            btm_ble_suspend_bg_conn();
        }
    } else {
        BTM_TRACE_ERROR("Illegal Connection Scan Parameters");
    }

}
