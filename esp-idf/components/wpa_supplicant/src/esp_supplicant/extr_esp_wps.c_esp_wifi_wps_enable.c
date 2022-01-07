
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_wps_config_t ;


 int API_MUTEX_GIVE () ;
 int API_MUTEX_TAKE () ;
 int ESP_ERR_WIFI_MODE ;
 int ESP_OK ;
 int MSG_DEBUG ;
 int SIG_WPS_ENABLE ;
 int WPS_TASK_STACK_SIZE ;
 int s_wps_enabled ;
 int wifi_wps_enable_internal (int const*) ;
 int wpa_printf (int ,char*,...) ;
 int wps_check_wifi_mode () ;
 int wps_post_block (int ,int *) ;
 int wps_task_deinit () ;
 int wps_task_init () ;

int esp_wifi_wps_enable(const esp_wps_config_t *config)
{
    int ret;

    if (ESP_OK != wps_check_wifi_mode()) {
        return ESP_ERR_WIFI_MODE;
    }

    API_MUTEX_TAKE();
    if (s_wps_enabled) {
        API_MUTEX_GIVE();
        wpa_printf(MSG_DEBUG, "wps enable: already enabled");
        return ESP_OK;
    }
    ret = wifi_wps_enable_internal(config);
    API_MUTEX_GIVE();
    return ret;

}
