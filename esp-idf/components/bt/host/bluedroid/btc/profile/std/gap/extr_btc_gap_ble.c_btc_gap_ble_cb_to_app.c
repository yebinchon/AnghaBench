
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* esp_gap_ble_cb_t ) (int ,int *) ;
typedef int esp_gap_ble_cb_event_t ;
typedef int esp_ble_gap_cb_param_t ;


 int BTC_PID_GAP_BLE ;
 int btc_profile_cb_get (int ) ;

__attribute__((used)) static inline void btc_gap_ble_cb_to_app(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    esp_gap_ble_cb_t btc_gap_ble_cb = (esp_gap_ble_cb_t)btc_profile_cb_get(BTC_PID_GAP_BLE);
    if (btc_gap_ble_cb) {
        btc_gap_ble_cb(event, param);
    }
}
