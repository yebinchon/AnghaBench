
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBLE_SCAN_PARAM_SETUP_CBACK ;
struct TYPE_3__ {scalar_t__ scan_type; int scan_duplicate; int own_addr_type; int scan_filter_policy; int scan_window; int scan_interval; } ;
typedef TYPE_1__ esp_ble_scan_params_t ;


 int BLE_ADDR_TYPE_PUBLIC ;
 scalar_t__ BLE_ADDR_TYPE_RPA_RANDOM ;
 scalar_t__ BLE_ISVALID_PARAM (int ,int ,scalar_t__) ;
 int BLE_SCAN_DUPLICATE_DISABLE ;
 scalar_t__ BLE_SCAN_DUPLICATE_MAX ;
 int BLE_SCAN_FILTER_ALLOW_ALL ;
 scalar_t__ BLE_SCAN_FILTER_ALLOW_WLIST_PRA_DIR ;
 int BTA_DmSetBleScanFilterParams (int ,int ,int ,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ BTM_BLE_SCAN_INT_MAX ;
 int BTM_BLE_SCAN_INT_MIN ;
 scalar_t__ BTM_BLE_SCAN_MODE_ACTI ;
 scalar_t__ BTM_BLE_SCAN_MODE_PASS ;
 scalar_t__ BTM_BLE_SCAN_WIN_MAX ;
 int BTM_BLE_SCAN_WIN_MIN ;
 int BTM_ILLEGAL_VALUE ;
 int ESP_DEFAULT_GATT_IF ;
 int btc_scan_params_callback (int ,int ) ;

__attribute__((used)) static void btc_ble_set_scan_params(esp_ble_scan_params_t *scan_params, tBLE_SCAN_PARAM_SETUP_CBACK scan_param_setup_cback)
{
    if (BLE_ISVALID_PARAM(scan_params->scan_interval, BTM_BLE_SCAN_INT_MIN, BTM_BLE_SCAN_INT_MAX) &&
        BLE_ISVALID_PARAM(scan_params->scan_window, BTM_BLE_SCAN_WIN_MIN, BTM_BLE_SCAN_WIN_MAX) &&
        BLE_ISVALID_PARAM(scan_params->own_addr_type, BLE_ADDR_TYPE_PUBLIC, BLE_ADDR_TYPE_RPA_RANDOM) &&
        BLE_ISVALID_PARAM(scan_params->scan_filter_policy, BLE_SCAN_FILTER_ALLOW_ALL, BLE_SCAN_FILTER_ALLOW_WLIST_PRA_DIR) &&
        BLE_ISVALID_PARAM(scan_params->scan_duplicate, BLE_SCAN_DUPLICATE_DISABLE, BLE_SCAN_DUPLICATE_MAX -1) &&
        (scan_params->scan_type == BTM_BLE_SCAN_MODE_ACTI || scan_params->scan_type == BTM_BLE_SCAN_MODE_PASS)) {
        BTA_DmSetBleScanFilterParams(ESP_DEFAULT_GATT_IF,
                                     scan_params->scan_interval,
                                     scan_params->scan_window,
                                     scan_params->scan_type,
                                     scan_params->scan_filter_policy,
                                     scan_params->own_addr_type,
                                     scan_params->scan_duplicate,
                                     scan_param_setup_cback);
    } else {
        btc_scan_params_callback(ESP_DEFAULT_GATT_IF, BTM_ILLEGAL_VALUE);
    }
}
