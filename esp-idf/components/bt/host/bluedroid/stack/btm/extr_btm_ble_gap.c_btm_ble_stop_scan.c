
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int scan_type; } ;
struct TYPE_5__ {int wl_state; TYPE_1__ inq_var; } ;
struct TYPE_6__ {TYPE_2__ ble_ctr_cb; } ;


 int BTM_BLE_DUPLICATE_ENABLE ;
 int BTM_BLE_SCAN_DISABLE ;
 int BTM_BLE_SCAN_MODE_NONE ;
 int BTM_BLE_STOP_SCAN ;
 int BTM_BLE_WL_SCAN ;
 int BTM_TRACE_EVENT (char*) ;
 int SP_ADV_ALL ;
 TYPE_3__ btm_cb ;
 int btm_update_scanner_filter_policy (int ) ;
 int btsnd_hcic_ble_set_scan_enable (int ,int ) ;

void btm_ble_stop_scan(void)
{
    BTM_TRACE_EVENT ("btm_ble_stop_scan ");


    btm_cb.ble_ctr_cb.inq_var.scan_type = BTM_BLE_SCAN_MODE_NONE;
    btm_cb.ble_ctr_cb.inq_var.state = BTM_BLE_STOP_SCAN;

    btsnd_hcic_ble_set_scan_enable (BTM_BLE_SCAN_DISABLE, BTM_BLE_DUPLICATE_ENABLE);

    btm_update_scanner_filter_policy(SP_ADV_ALL);

    btm_cb.ble_ctr_cb.wl_state &= ~BTM_BLE_WL_SCAN;
}
