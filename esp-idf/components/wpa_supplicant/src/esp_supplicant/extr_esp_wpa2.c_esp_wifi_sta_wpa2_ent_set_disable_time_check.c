
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 int s_disable_time_check ;

esp_err_t esp_wifi_sta_wpa2_ent_set_disable_time_check(bool disable)
{
    s_disable_time_check = disable;
    return ESP_OK;
}
