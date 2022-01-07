
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 int MSG_INFO ;
 int WPA2_VERSION ;
 int eap_peer_sm_deinit () ;
 int eap_peer_unregister_methods () ;
 int esp_wifi_unregister_wpa2_cb_internal () ;
 scalar_t__ gEapSm ;
 int wpa_printf (int ,char*,int ) ;

esp_err_t esp_wifi_sta_wpa2_ent_disable_fn(void *param)
{
    wpa_printf(MSG_INFO, "WPA2 ENTERPRISE VERSION: [%s] disable\n", WPA2_VERSION);
    esp_wifi_unregister_wpa2_cb_internal();

    if (gEapSm) {
        eap_peer_sm_deinit();
    }
    return ESP_OK;
}
