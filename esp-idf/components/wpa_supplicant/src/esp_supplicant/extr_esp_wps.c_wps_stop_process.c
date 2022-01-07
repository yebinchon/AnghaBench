
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wifi_sta_config_t ;
typedef int wifi_event_sta_wps_fail_reason_t ;
typedef int u8 ;
struct wps_sm {int wps_success_cb_timer; int wps_msg_timeout_timer; int config; scalar_t__ ssid_len; int * ssid; int * bssid; TYPE_1__* wps; scalar_t__ discover_ssid_cnt; scalar_t__ scan_cnt; } ;
typedef int reason_code ;
struct TYPE_2__ {int state; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int ETH_ALEN ;
 int MSG_DEBUG ;
 int SEND_M1 ;
 int WIFI_EVENT ;
 int WIFI_EVENT_STA_WPS_ER_FAILED ;
 int WPS_STATUS_DISABLE ;
 int esp_event_send_internal (int ,int ,int *,int,int ) ;
 int esp_wifi_disarm_sta_connection_timer_internal () ;
 int esp_wifi_disconnect () ;
 int ets_timer_disarm (int *) ;
 struct wps_sm* gWpsSm ;
 int os_bzero (int *,int) ;
 int portMAX_DELAY ;
 int wpa_printf (int ,char*) ;
 int wps_set_status (int ) ;

int wps_stop_process(wifi_event_sta_wps_fail_reason_t reason_code)
{
    struct wps_sm *sm = gWpsSm;

    if (!gWpsSm) {
        return ESP_FAIL;
    }

    wps_set_status(WPS_STATUS_DISABLE);
    sm->scan_cnt = 0;
    sm->discover_ssid_cnt = 0;
    sm->wps->state = SEND_M1;
    os_bzero(sm->bssid, ETH_ALEN);
    os_bzero(sm->ssid, 32);
    sm->ssid_len = 0;
    os_bzero((u8 *)&sm->config, sizeof(wifi_sta_config_t));

    esp_wifi_disarm_sta_connection_timer_internal();
    ets_timer_disarm(&sm->wps_msg_timeout_timer);
    ets_timer_disarm(&sm->wps_success_cb_timer);

    esp_wifi_disconnect();

    wpa_printf(MSG_DEBUG, "Write wps_fail_information");

    esp_event_send_internal(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_FAILED, &reason_code, sizeof(reason_code), portMAX_DELAY);

    return ESP_OK;
}
