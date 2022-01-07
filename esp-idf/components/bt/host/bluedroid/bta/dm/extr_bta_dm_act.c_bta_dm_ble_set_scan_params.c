
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scan_param_setup_cback; int scan_mode; int scan_window; int scan_int; int client_if; } ;
struct TYPE_5__ {TYPE_1__ ble_set_scan_params; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_BleSetScanParams (int ,int ,int ,int ,int ) ;

void bta_dm_ble_set_scan_params(tBTA_DM_MSG *p_data)
{
    BTM_BleSetScanParams(p_data->ble_set_scan_params.client_if,
                         p_data->ble_set_scan_params.scan_int,
                         p_data->ble_set_scan_params.scan_window,
                         p_data->ble_set_scan_params.scan_mode,
                         p_data->ble_set_scan_params.scan_param_setup_cback);
}
