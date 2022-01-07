
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_sm {int * wps; struct wps_sm* wps_ctx; int * dev; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int WIFI_APPIE_WPS_AR ;
 int WIFI_APPIE_WPS_PR ;
 int esp_wifi_set_wps_cb_internal (int *) ;
 int esp_wifi_unset_appie_internal (int ) ;
 struct wps_sm* gWpsSm ;
 int os_free (struct wps_sm*) ;
 int wps_deinit () ;
 int wps_dev_deinit (int *) ;

int
wifi_station_wps_deinit(void)
{
    struct wps_sm *sm = gWpsSm;

    if (gWpsSm == ((void*)0)) {
        return ESP_FAIL;
    }

    esp_wifi_unset_appie_internal(WIFI_APPIE_WPS_PR);
    esp_wifi_unset_appie_internal(WIFI_APPIE_WPS_AR);
    esp_wifi_set_wps_cb_internal(((void*)0));

    if (sm->dev) {
        wps_dev_deinit(sm->dev);
        sm->dev = ((void*)0);
    }
    if (sm->wps_ctx) {
        os_free(sm->wps_ctx);
        sm->wps_ctx = ((void*)0);
    }
    if (sm->wps) {
        wps_deinit();
        sm->wps = ((void*)0);
    }
    if (sm) {
        os_free(gWpsSm);
        gWpsSm = ((void*)0);
    }

    return ESP_OK;
}
