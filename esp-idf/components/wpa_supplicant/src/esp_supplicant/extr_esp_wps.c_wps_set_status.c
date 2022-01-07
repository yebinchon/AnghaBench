
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int esp_wifi_set_wps_status_internal (int ) ;

int wps_set_status(uint32_t status)
{
    return esp_wifi_set_wps_status_internal(status);
}
