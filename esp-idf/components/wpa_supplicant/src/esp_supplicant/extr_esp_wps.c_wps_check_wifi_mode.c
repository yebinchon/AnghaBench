
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_mode_t ;


 int ESP_ERR_WIFI_MODE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int MSG_ERROR ;
 int WIFI_MODE_AP ;
 int WIFI_MODE_NULL ;
 int esp_wifi_get_mode (int *) ;
 int esp_wifi_get_promiscuous (int*) ;
 int wpa_printf (int ,char*,int,...) ;

int wps_check_wifi_mode(void)
{
    bool sniffer = 0;
    wifi_mode_t mode;
    int ret;

    ret = esp_wifi_get_mode(&mode);
    if (ESP_OK != ret) {
        wpa_printf(MSG_ERROR, "wps check wifi mode: failed to get wifi mode ret=%d", ret);
        return ESP_FAIL;
    }

    ret = esp_wifi_get_promiscuous(&sniffer);
    if (ESP_OK != ret) {
        wpa_printf(MSG_ERROR, "wps check wifi mode: failed to get sniffer mode ret=%d", ret);
        return ESP_FAIL;
    }

    if (mode == WIFI_MODE_AP || mode == WIFI_MODE_NULL || sniffer == 1) {
        wpa_printf(MSG_ERROR, "wps check wifi mode: wrong wifi mode=%d sniffer=%d", mode, sniffer);
        return ESP_ERR_WIFI_MODE;
    }

    return ESP_OK;
}
