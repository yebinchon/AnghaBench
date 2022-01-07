
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_gap_ble_cb_event_t ;
typedef int esp_ble_gap_cb_param_t ;



 int esp_ble_gap_start_advertising (int *) ;
 int example_adv_params ;

__attribute__((used)) static void example_gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    switch (event) {
    case 128:
        esp_ble_gap_start_advertising(&example_adv_params);
        break;
    default:
        break;
    }
}
