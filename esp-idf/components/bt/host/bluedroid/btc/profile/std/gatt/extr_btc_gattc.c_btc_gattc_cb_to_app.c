
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* esp_gattc_cb_t ) (int ,int ,int *) ;
typedef int esp_gattc_cb_event_t ;
typedef int esp_gatt_if_t ;
typedef int esp_ble_gattc_cb_param_t ;


 int BTC_PID_GATTC ;
 int btc_profile_cb_get (int ) ;

__attribute__((used)) static inline void btc_gattc_cb_to_app(esp_gattc_cb_event_t event, esp_gatt_if_t gattc_if, esp_ble_gattc_cb_param_t *param)
{
    esp_gattc_cb_t btc_gattc_cb = (esp_gattc_cb_t )btc_profile_cb_get(BTC_PID_GATTC);
    if (btc_gattc_cb) {
 btc_gattc_cb(event, gattc_if, param);
    }
}
