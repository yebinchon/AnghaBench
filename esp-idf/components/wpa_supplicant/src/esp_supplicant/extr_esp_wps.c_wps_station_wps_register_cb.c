
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wps_st_cb_t ;
struct TYPE_2__ {int st_cb; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_1__* gWpsSm ;

int
wps_station_wps_register_cb(wps_st_cb_t cb)
{
    if (!gWpsSm) {
        return ESP_FAIL;
    }

    gWpsSm->st_cb = cb;
    return ESP_OK;
}
