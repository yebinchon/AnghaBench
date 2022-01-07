
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wps_st_cb_t ;
typedef scalar_t__ wifi_mode_t ;


 scalar_t__ WIFI_MODE_AP ;
 scalar_t__ WIFI_MODE_NULL ;
 int esp_wifi_get_mode (scalar_t__*) ;
 scalar_t__ wps_station_wps_register_cb (int ) ;

bool
wifi_set_wps_cb(wps_st_cb_t cb)
{
    wifi_mode_t mode;

    esp_wifi_get_mode(&mode);
    if (mode == WIFI_MODE_AP || mode == WIFI_MODE_NULL) {
        return 0;
    }

    if (wps_station_wps_register_cb(cb) == 0) {
        return 1;
    }

    return 0;
}
