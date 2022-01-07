
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_wifi_get_wps_status_internal () ;

int wps_get_status(void)
{
    return esp_wifi_get_wps_status_internal();
}
