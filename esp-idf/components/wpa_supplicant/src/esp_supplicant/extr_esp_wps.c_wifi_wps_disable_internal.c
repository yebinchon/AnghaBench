
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_OK ;
 int WPS_STATUS_DISABLE ;
 int wifi_station_wps_deinit () ;
 int wps_set_status (int ) ;

int wifi_wps_disable_internal(void)
{
    wps_set_status(WPS_STATUS_DISABLE);
    wifi_station_wps_deinit();
    return ESP_OK;
}
