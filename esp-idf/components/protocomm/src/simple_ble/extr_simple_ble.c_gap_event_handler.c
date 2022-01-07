
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_gap_ble_cb_event_t ;
typedef int esp_ble_gap_cb_param_t ;
struct TYPE_2__ {int adv_params; } ;




 int adv_config_done ;
 int adv_config_flag ;
 int esp_ble_gap_start_advertising (int *) ;
 TYPE_1__* g_ble_cfg_p ;
 int scan_rsp_config_flag ;

__attribute__((used)) static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    switch (event) {
    case 129:
        adv_config_done &= (~adv_config_flag);
        if (adv_config_done == 0) {
            esp_ble_gap_start_advertising(&g_ble_cfg_p->adv_params);
        }
        break;
    case 128:
        adv_config_done &= (~scan_rsp_config_flag);
        if (adv_config_done == 0) {
            esp_ble_gap_start_advertising(&g_ble_cfg_p->adv_params);
        }
        break;
    default:
        break;
    }
}
