
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_ASSERT (int ) ;
 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;
 int esp_wifi_sta_get_prof_authmode_internal () ;
 scalar_t__ esp_wifi_sta_prof_is_wpa2_internal () ;
 scalar_t__ esp_wifi_sta_prof_is_wpa_internal () ;
 int wpa_set_profile (int ,int ) ;

void wpa_config_profile(void)
{
    if (esp_wifi_sta_prof_is_wpa_internal()) {
        wpa_set_profile(WPA_PROTO_WPA, esp_wifi_sta_get_prof_authmode_internal());
    } else if (esp_wifi_sta_prof_is_wpa2_internal()) {
        wpa_set_profile(WPA_PROTO_RSN, esp_wifi_sta_get_prof_authmode_internal());
    } else {
        WPA_ASSERT(0);
    }
}
