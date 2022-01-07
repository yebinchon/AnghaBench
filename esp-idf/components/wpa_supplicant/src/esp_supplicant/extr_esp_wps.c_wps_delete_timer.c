
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_sm {int wps_eapol_start_timer; int wps_scan_timer; int wps_msg_timeout_timer; int wps_timeout_timer; int wps_success_cb_timer; } ;


 int ESP_OK ;
 int esp_wifi_disarm_sta_connection_timer_internal () ;
 int ets_timer_disarm (int *) ;
 int ets_timer_done (int *) ;
 struct wps_sm* gWpsSm ;

int wps_delete_timer(void)
{
    struct wps_sm *sm = gWpsSm;

    if (!sm) {
        return ESP_OK;
    }

    ets_timer_disarm(&sm->wps_success_cb_timer);
    ets_timer_disarm(&sm->wps_timeout_timer);
    ets_timer_disarm(&sm->wps_msg_timeout_timer);
    ets_timer_disarm(&sm->wps_scan_timer);
    ets_timer_disarm(&sm->wps_eapol_start_timer);
    ets_timer_done(&sm->wps_success_cb_timer);
    ets_timer_done(&sm->wps_timeout_timer);
    ets_timer_done(&sm->wps_msg_timeout_timer);
    ets_timer_done(&sm->wps_scan_timer);
    ets_timer_done(&sm->wps_eapol_start_timer);
    esp_wifi_disarm_sta_connection_timer_internal();
    return ESP_OK;
}
