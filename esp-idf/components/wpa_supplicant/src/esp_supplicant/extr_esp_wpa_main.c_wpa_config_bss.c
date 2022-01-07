
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct wifi_ssid {int len; int ssid; } ;


 int esp_wifi_get_macaddr_internal (int ,int *) ;
 int esp_wifi_sta_get_group_cipher_internal () ;
 int esp_wifi_sta_get_pairwise_cipher_internal () ;
 scalar_t__ esp_wifi_sta_get_prof_password_internal () ;
 struct wifi_ssid* esp_wifi_sta_get_prof_ssid_internal () ;
 int wpa_set_bss (char*,char*,int ,int ,char*,int ,int ) ;

int wpa_config_bss(uint8_t *bssid)
{
    int ret = 0;
    struct wifi_ssid *ssid = esp_wifi_sta_get_prof_ssid_internal();
    u8 mac[6];

    esp_wifi_get_macaddr_internal(0, mac);
    ret = wpa_set_bss((char *)mac, (char *)bssid, esp_wifi_sta_get_pairwise_cipher_internal(), esp_wifi_sta_get_group_cipher_internal(),
                (char *)esp_wifi_sta_get_prof_password_internal(), ssid->ssid, ssid->len);
    return ret;
}
