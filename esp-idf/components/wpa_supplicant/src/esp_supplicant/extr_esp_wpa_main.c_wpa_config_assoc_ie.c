
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 scalar_t__ BIT (int ) ;
 int WIFI_APPIE_RSN ;
 int WIFI_APPIE_WPA ;
 int esp_wifi_set_appie_internal (int ,scalar_t__*,int ,int) ;

void wpa_config_assoc_ie(u8 proto, u8 *assoc_buf, u32 assoc_wpa_ie_len)
{
    if (proto == BIT(0)) {
        esp_wifi_set_appie_internal(WIFI_APPIE_WPA, assoc_buf, assoc_wpa_ie_len, 1);
    } else {
        esp_wifi_set_appie_internal(WIFI_APPIE_RSN, assoc_buf, assoc_wpa_ie_len, 1);
    }
}
