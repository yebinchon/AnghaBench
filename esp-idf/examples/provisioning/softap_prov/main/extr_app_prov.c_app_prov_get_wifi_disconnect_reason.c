
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wifi_prov_sta_fail_reason_t ;
typedef int esp_err_t ;
struct TYPE_2__ {scalar_t__ wifi_state; int wifi_disconnect_reason; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ WIFI_PROV_STA_DISCONNECTED ;
 TYPE_1__* g_prov ;

esp_err_t app_prov_get_wifi_disconnect_reason(wifi_prov_sta_fail_reason_t* reason)
{
    if (g_prov == ((void*)0) || reason == ((void*)0)) {
        return ESP_FAIL;
    }

    if (g_prov->wifi_state != WIFI_PROV_STA_DISCONNECTED) {
        return ESP_FAIL;
    }

    *reason = g_prov->wifi_disconnect_reason;
    return ESP_OK;
}
