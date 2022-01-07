
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wifi_mode_t ;
typedef int int32_t ;
typedef int esp_event_base_t ;
struct TYPE_4__ {int sta_bssid_set; int sta_ssid_len; int sta_ssid; int sta_bssid; } ;
typedef TYPE_1__ esp_blufi_extra_info_t ;


 int CONNECTED_BIT ;
 int ESP_BLUFI_STA_CONN_SUCCESS ;

 int esp_blufi_send_wifi_conn_report (int ,int ,int ,TYPE_1__*) ;
 int esp_wifi_get_mode (int *) ;
 int gl_sta_bssid ;
 int gl_sta_ssid ;
 int gl_sta_ssid_len ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int wifi_event_group ;
 int xEventGroupSetBits (int ,int ) ;

__attribute__((used)) static void ip_event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    wifi_mode_t mode;

    switch (event_id) {
    case 128: {
        esp_blufi_extra_info_t info;

        xEventGroupSetBits(wifi_event_group, CONNECTED_BIT);
        esp_wifi_get_mode(&mode);

        memset(&info, 0, sizeof(esp_blufi_extra_info_t));
        memcpy(info.sta_bssid, gl_sta_bssid, 6);
        info.sta_bssid_set = 1;
        info.sta_ssid = gl_sta_ssid;
        info.sta_ssid_len = gl_sta_ssid_len;
        esp_blufi_send_wifi_conn_report(mode, ESP_BLUFI_STA_CONN_SUCCESS, 0, &info);
        break;
    }
    default:
        break;
    }
    return;
}
