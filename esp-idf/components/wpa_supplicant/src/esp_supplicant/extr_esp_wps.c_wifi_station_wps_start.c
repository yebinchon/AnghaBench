
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_sm {int is_wps_scan; int wps_timeout_timer; int scan_cnt; int wps; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int MSG_ERROR ;
 int WPS_CALC_KEY_PRE_CALC ;


 int esp_wifi_set_wps_start_flag_internal (int) ;
 int ets_timer_arm (int *,int,int ) ;
 int ets_timer_disarm (int *) ;
 int wifi_wps_scan () ;
 int wpa_printf (int ,char*) ;
 int wps_build_public_key (int ,int *,int ) ;
 int wps_get_status () ;
 struct wps_sm* wps_sm_get () ;

int wifi_station_wps_start(void)
{
    struct wps_sm *sm = wps_sm_get();

    if (!sm) {
        wpa_printf(MSG_ERROR, "WPS: wps not initial");
        return ESP_FAIL;
    }

    ets_timer_arm(&sm->wps_timeout_timer, 120000, 0);

    switch (wps_get_status()) {
    case 129: {
        sm->is_wps_scan = 1;

        wps_build_public_key(sm->wps, ((void*)0), WPS_CALC_KEY_PRE_CALC);

        wifi_wps_scan();


        break;
    }
    case 128:
        sm->scan_cnt = 0;
        ets_timer_disarm(&sm->wps_timeout_timer);
        ets_timer_arm(&sm->wps_timeout_timer, 120000, 0);
        break;
    default:
        break;
    }
    esp_wifi_set_wps_start_flag_internal(1);
    return ESP_OK;
}
