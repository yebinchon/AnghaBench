
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_sm {int dummy; } ;


 int WIFI_EVENT ;
 int WIFI_EVENT_STA_WPS_ER_TIMEOUT ;
 int WPS_STATUS_DISABLE ;
 int esp_event_send_internal (int ,int ,int ,int ,int ) ;
 int esp_wifi_disarm_sta_connection_timer_internal () ;
 struct wps_sm* gWpsSm ;
 int portMAX_DELAY ;
 int wps_set_status (int ) ;

void
wifi_station_wps_timeout_internal(void)
{
    struct wps_sm *sm = gWpsSm;

    if (!sm) {
        return;
    }

    esp_wifi_disarm_sta_connection_timer_internal();

    wps_set_status(WPS_STATUS_DISABLE);

    esp_event_send_internal(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_TIMEOUT, 0, 0, portMAX_DELAY);
}
