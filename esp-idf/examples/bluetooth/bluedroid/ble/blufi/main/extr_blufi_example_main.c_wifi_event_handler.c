
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wifi_mode_t ;
struct TYPE_7__ {int ssid_len; int ssid; int bssid; } ;
typedef TYPE_1__ wifi_event_sta_connected_t ;
struct TYPE_8__ {int ssid; int rssi; } ;
typedef TYPE_2__ wifi_ap_record_t ;
typedef int uint16_t ;
typedef int int32_t ;
typedef int esp_event_base_t ;
typedef TYPE_2__ esp_blufi_ap_record_t ;


 int BLUFI_ERROR (char*) ;
 int BLUFI_INFO (char*) ;
 int CONNECTED_BIT ;
 int ESP_BLUFI_STA_CONN_FAIL ;
 int ESP_BLUFI_STA_CONN_SUCCESS ;
 int ESP_ERROR_CHECK (int ) ;





 int esp_blufi_send_wifi_conn_report (int ,int ,int ,int *) ;
 int esp_blufi_send_wifi_list (int,TYPE_2__*) ;
 int esp_wifi_connect () ;
 int esp_wifi_get_mode (int *) ;
 int esp_wifi_scan_get_ap_num (int*) ;
 int esp_wifi_scan_get_ap_records (int*,TYPE_2__*) ;
 int esp_wifi_scan_stop () ;
 int free (TYPE_2__*) ;
 int gl_sta_bssid ;
 int gl_sta_connected ;
 int gl_sta_ssid ;
 int gl_sta_ssid_len ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int wifi_event_group ;
 int xEventGroupClearBits (int ,int ) ;

__attribute__((used)) static void wifi_event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    wifi_event_sta_connected_t *event;
    wifi_mode_t mode;

    switch (event_id) {
    case 128:
        esp_wifi_connect();
        break;
    case 130:
        gl_sta_connected = 1;
        event = (wifi_event_sta_connected_t*) event_data;
        memcpy(gl_sta_bssid, event->bssid, 6);
        memcpy(gl_sta_ssid, event->ssid, event->ssid_len);
        gl_sta_ssid_len = event->ssid_len;
        break;
    case 129:


        gl_sta_connected = 0;
        memset(gl_sta_ssid, 0, 32);
        memset(gl_sta_bssid, 0, 6);
        gl_sta_ssid_len = 0;
        esp_wifi_connect();
        xEventGroupClearBits(wifi_event_group, CONNECTED_BIT);
        break;
    case 132:
        esp_wifi_get_mode(&mode);


        if (gl_sta_connected) {
            esp_blufi_send_wifi_conn_report(mode, ESP_BLUFI_STA_CONN_SUCCESS, 0, ((void*)0));
        } else {
            esp_blufi_send_wifi_conn_report(mode, ESP_BLUFI_STA_CONN_FAIL, 0, ((void*)0));
        }
        break;
    case 131: {
        uint16_t apCount = 0;
        esp_wifi_scan_get_ap_num(&apCount);
        if (apCount == 0) {
            BLUFI_INFO("Nothing AP found");
            break;
        }
        wifi_ap_record_t *ap_list = (wifi_ap_record_t *)malloc(sizeof(wifi_ap_record_t) * apCount);
        if (!ap_list) {
            BLUFI_ERROR("malloc error, ap_list is NULL");
            break;
        }
        ESP_ERROR_CHECK(esp_wifi_scan_get_ap_records(&apCount, ap_list));
        esp_blufi_ap_record_t * blufi_ap_list = (esp_blufi_ap_record_t *)malloc(apCount * sizeof(esp_blufi_ap_record_t));
        if (!blufi_ap_list) {
            if (ap_list) {
                free(ap_list);
            }
            BLUFI_ERROR("malloc error, blufi_ap_list is NULL");
            break;
        }
        for (int i = 0; i < apCount; ++i)
        {
            blufi_ap_list[i].rssi = ap_list[i].rssi;
            memcpy(blufi_ap_list[i].ssid, ap_list[i].ssid, sizeof(ap_list[i].ssid));
        }
        esp_blufi_send_wifi_list(apCount, blufi_ap_list);
        esp_wifi_scan_stop();
        free(ap_list);
        free(blufi_ap_list);
        break;
    }
    default:
        break;
    }
    return;
}
