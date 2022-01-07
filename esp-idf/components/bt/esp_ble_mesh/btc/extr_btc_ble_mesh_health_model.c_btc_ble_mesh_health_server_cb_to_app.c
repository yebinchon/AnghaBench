
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* esp_ble_mesh_health_server_cb_t ) (int ,int *) ;
typedef int esp_ble_mesh_health_server_cb_param_t ;
typedef int esp_ble_mesh_health_server_cb_event_t ;


 int BTC_PID_HEALTH_SERVER ;
 int btc_profile_cb_get (int ) ;

__attribute__((used)) static inline void btc_ble_mesh_health_server_cb_to_app(esp_ble_mesh_health_server_cb_event_t event,
        esp_ble_mesh_health_server_cb_param_t *param)
{
    esp_ble_mesh_health_server_cb_t btc_ble_mesh_cb =
        (esp_ble_mesh_health_server_cb_t)btc_profile_cb_get(BTC_PID_HEALTH_SERVER);
    if (btc_ble_mesh_cb) {
        btc_ble_mesh_cb(event, param);
    }
}
