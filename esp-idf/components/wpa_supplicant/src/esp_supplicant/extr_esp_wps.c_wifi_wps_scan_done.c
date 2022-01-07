
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wifi_sta_config_t ;
struct TYPE_3__ {int sta; } ;
typedef TYPE_1__ wifi_config_t ;
struct wps_sm {int discover_ssid_cnt; scalar_t__ scan_cnt; int ignore_sel_reg; int wps_scan_timer; int config; } ;
typedef int STATUS ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WIFI_EVENT ;
 int WIFI_EVENT_STA_WPS_ER_PBC_OVERLAP ;
 scalar_t__ WPS_IGNORE_SEL_REG_MAX_CNT ;
 scalar_t__ WPS_STATUS_DISABLE ;
 scalar_t__ WPS_STATUS_PENDING ;
 scalar_t__ WPS_STATUS_SCANNING ;
 scalar_t__ WPS_TYPE_DISABLE ;
 int esp_event_send_internal (int ,int ,int ,int ,int ) ;
 int esp_wifi_connect () ;
 int esp_wifi_disconnect () ;
 int esp_wifi_set_config (int ,TYPE_1__*) ;
 int ets_timer_arm (int *,int,int ) ;
 struct wps_sm* gWpsSm ;
 int memcpy (int *,int *,int) ;
 int portMAX_DELAY ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wps_get_status () ;
 scalar_t__ wps_get_type () ;
 int wps_set_status (scalar_t__) ;

void
wifi_wps_scan_done(void *arg, STATUS status)
{
    struct wps_sm *sm = gWpsSm;
    wifi_config_t wifi_config;

    if (wps_get_type() == WPS_TYPE_DISABLE) {
        return;
    }

    if (!sm) {
        return;
    }

    if (sm->discover_ssid_cnt == 1) {
        wps_set_status(WPS_STATUS_PENDING);
    } else if (sm->discover_ssid_cnt == 0) {
        wps_set_status(WPS_STATUS_SCANNING);
    } else {
        wpa_printf(MSG_INFO, "PBC session overlap!");
        wps_set_status(WPS_STATUS_DISABLE);
        esp_event_send_internal(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_PBC_OVERLAP, 0, 0, portMAX_DELAY);
    }

    wpa_printf(MSG_DEBUG, "wps scan_done discover_ssid_cnt = %d", sm->discover_ssid_cnt);

    sm->discover_ssid_cnt = 0;

    if (wps_get_status() == WPS_STATUS_PENDING) {
        esp_wifi_disconnect();

        memcpy(&wifi_config.sta, &sm->config, sizeof(wifi_sta_config_t));
        esp_wifi_set_config(0, &wifi_config);

        wpa_printf(MSG_DEBUG, "WPS: neg start");
        esp_wifi_connect();
    } else if (wps_get_status() == WPS_STATUS_SCANNING) {
        if (sm->scan_cnt < WPS_IGNORE_SEL_REG_MAX_CNT) {
            sm->ignore_sel_reg = 1;
        }
        ets_timer_arm(&sm->wps_scan_timer, 100, 0);
    } else {
        return;
    }
}
