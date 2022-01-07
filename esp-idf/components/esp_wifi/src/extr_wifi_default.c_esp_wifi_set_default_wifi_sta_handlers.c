
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int _esp_wifi_set_default_wifi_handlers () ;

esp_err_t esp_wifi_set_default_wifi_sta_handlers(void)
{
    return _esp_wifi_set_default_wifi_handlers();
}
