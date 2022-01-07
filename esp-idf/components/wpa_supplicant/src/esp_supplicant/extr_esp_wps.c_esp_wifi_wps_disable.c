
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_MUTEX_GIVE () ;
 int API_MUTEX_TAKE () ;
 int ESP_ERR_WIFI_MODE ;
 int ESP_OK ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int SIG_WPS_DISABLE ;
 int WPS_TYPE_DISABLE ;
 int esp_wifi_disconnect () ;
 int esp_wifi_set_wps_start_flag_internal (int) ;
 int s_wps_enabled ;
 int wifi_wps_disable_internal () ;
 int wpa_printf (int ,char*,...) ;
 int wps_check_wifi_mode () ;
 int wps_delete_timer () ;
 int wps_post_block (int ,int ) ;
 int wps_set_type (int ) ;
 int wps_task_deinit () ;

int esp_wifi_wps_disable(void)
{
    int ret = 0;

    if (ESP_OK != wps_check_wifi_mode()) {
        return ESP_ERR_WIFI_MODE;
    }

    API_MUTEX_TAKE();

    if (!s_wps_enabled) {
        wpa_printf(MSG_DEBUG, "wps disable: already disabled");
        API_MUTEX_GIVE();
        return ESP_OK;
    }

    wpa_printf(MSG_INFO, "wifi_wps_disable\n");
    wps_set_type(WPS_TYPE_DISABLE);




    wps_delete_timer();




    ret = wifi_wps_disable_internal();


    if (ESP_OK != ret) {
        wpa_printf(MSG_ERROR, "wps disable: failed to disable wps, ret=%d", ret);
    }

    esp_wifi_disconnect();
    esp_wifi_set_wps_start_flag_internal(0);
    wps_task_deinit();
    s_wps_enabled = 0;
    API_MUTEX_GIVE();
    return ESP_OK;
}
