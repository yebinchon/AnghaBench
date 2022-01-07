
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wifi_prov_ctx_t ;
struct TYPE_9__ {int auth_mode; int channel; int ssid; int bssid; int ip_addr; } ;
struct TYPE_10__ {scalar_t__ wifi_state; int fail_reason; TYPE_1__ conn_info; } ;
typedef TYPE_2__ wifi_prov_config_get_data_t ;
struct TYPE_11__ {int authmode; int primary; scalar_t__ ssid; scalar_t__ bssid; } ;
typedef TYPE_3__ wifi_ap_record_t ;
struct TYPE_12__ {int ip; } ;
typedef TYPE_4__ esp_netif_ip_info_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ WIFI_PROV_STA_CONNECTED ;
 scalar_t__ WIFI_PROV_STA_DISCONNECTED ;
 int esp_ip4addr_ntoa (int *,int ,int) ;
 int esp_netif_get_handle_from_ifkey (char*) ;
 int esp_netif_get_ip_info (int ,TYPE_4__*) ;
 int esp_wifi_sta_get_ap_info (TYPE_3__*) ;
 int memcpy (int ,char*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int wifi_prov_mgr_done () ;
 int wifi_prov_mgr_get_wifi_disconnect_reason (int *) ;
 scalar_t__ wifi_prov_mgr_get_wifi_state (scalar_t__*) ;

__attribute__((used)) static esp_err_t get_status_handler(wifi_prov_config_get_data_t *resp_data, wifi_prov_ctx_t **ctx)
{

    memset(resp_data, 0, sizeof(wifi_prov_config_get_data_t));

    if (wifi_prov_mgr_get_wifi_state(&resp_data->wifi_state) != ESP_OK) {
        ESP_LOGW(TAG, "Wi-Fi provisioning manager not running");
        return ESP_ERR_INVALID_STATE;
    }

    if (resp_data->wifi_state == WIFI_PROV_STA_CONNECTED) {
        ESP_LOGD(TAG, "Got state : connected");


        esp_netif_ip_info_t ip_info;
        esp_netif_get_ip_info(esp_netif_get_handle_from_ifkey("WIFI_STA_DEF"), &ip_info);
        esp_ip4addr_ntoa(&ip_info.ip, resp_data->conn_info.ip_addr, sizeof(resp_data->conn_info.ip_addr));



        wifi_ap_record_t ap_info;
        esp_wifi_sta_get_ap_info(&ap_info);
        memcpy(resp_data->conn_info.bssid, (char *)ap_info.bssid, sizeof(ap_info.bssid));
        memcpy(resp_data->conn_info.ssid, (char *)ap_info.ssid, sizeof(ap_info.ssid));
        resp_data->conn_info.channel = ap_info.primary;
        resp_data->conn_info.auth_mode = ap_info.authmode;


        wifi_prov_mgr_done();
    } else if (resp_data->wifi_state == WIFI_PROV_STA_DISCONNECTED) {
        ESP_LOGD(TAG, "Got state : disconnected");


        wifi_prov_mgr_get_wifi_disconnect_reason(&resp_data->fail_reason);
    } else {
        ESP_LOGD(TAG, "Got state : connecting");
    }
    return ESP_OK;
}
