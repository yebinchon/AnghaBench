
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* esp_gatts_cb_t ) (int ,int ,int *) ;
typedef int esp_gatts_cb_event_t ;
typedef int esp_gatt_if_t ;
typedef int esp_ble_gatts_cb_param_t ;


 int BTC_PID_GATTS ;
 int btc_profile_cb_get (int ) ;

__attribute__((used)) static inline void btc_gatts_cb_to_app(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    esp_gatts_cb_t btc_gatts_cb = (esp_gatts_cb_t)btc_profile_cb_get(BTC_PID_GATTS);
    if (btc_gatts_cb) {
        btc_gatts_cb(event, gatts_if, param);
    }
}
