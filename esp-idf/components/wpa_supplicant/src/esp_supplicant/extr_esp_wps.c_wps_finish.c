
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wifi_sta_config_t ;
struct TYPE_8__ {scalar_t__ bssid_set; int bssid; int password; int ssid; } ;
struct TYPE_9__ {TYPE_2__ sta; } ;
typedef TYPE_3__ wifi_config_t ;
struct wps_sm {int wps_success_cb_timer; int bssid; int key_len; int key; int ssid_len; int ssid; int wps_msg_timeout_timer; int wps_timeout_timer; TYPE_1__* wps; } ;
struct TYPE_7__ {scalar_t__ state; } ;


 int ESP_FAIL ;
 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WIFI_EVENT ;
 int WIFI_EVENT_STA_WPS_ER_FAILED ;
 int WPS_FAIL_REASON_NORMAL ;
 scalar_t__ WPS_FINISHED ;
 int WPS_STATUS_SUCCESS ;
 int esp_event_send_internal (int ,int ,int ,int ,int ) ;
 int esp_wifi_disarm_sta_connection_timer_internal () ;
 int esp_wifi_set_config (int ,TYPE_3__*) ;
 int ets_timer_arm (int *,int,int ) ;
 int ets_timer_disarm (int *) ;
 struct wps_sm* gWpsSm ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_3__*,int,int) ;
 int os_free (TYPE_3__*) ;
 scalar_t__ os_zalloc (int) ;
 int portMAX_DELAY ;
 int wpa_printf (int ,char*) ;
 int wps_set_status (int ) ;
 int wps_stop_process (int ) ;

int wps_finish(void)
{
    struct wps_sm *sm = gWpsSm;
    int ret = ESP_FAIL;

    if (!gWpsSm) {
        return ESP_FAIL;
    }

    if (sm->wps->state == WPS_FINISHED) {
        wifi_config_t *config = (wifi_config_t *)os_zalloc(sizeof(wifi_config_t));

        if (config == ((void*)0)) {
            esp_event_send_internal(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_FAILED, 0, 0, portMAX_DELAY);
            return ESP_FAIL;
        }

        wpa_printf(MSG_DEBUG, "wps finished------>");
        wps_set_status(WPS_STATUS_SUCCESS);
        esp_wifi_disarm_sta_connection_timer_internal();
        ets_timer_disarm(&sm->wps_timeout_timer);
        ets_timer_disarm(&sm->wps_msg_timeout_timer);

        memset(config, 0x00, sizeof(wifi_sta_config_t));
        memcpy(config->sta.ssid, sm->ssid, sm->ssid_len);
        memcpy(config->sta.password, sm->key, sm->key_len);
        memcpy(config->sta.bssid, sm->bssid, ETH_ALEN);
        config->sta.bssid_set = 0;
        esp_wifi_set_config(0, config);
        os_free(config);
        config = ((void*)0);

        ets_timer_disarm(&sm->wps_success_cb_timer);
        ets_timer_arm(&sm->wps_success_cb_timer, 1000, 0);

        ret = 0;
    } else {
        wpa_printf(MSG_ERROR, "wps failed----->");

        ret = wps_stop_process(WPS_FAIL_REASON_NORMAL);
    }

    return ret;
}
