
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wifi_prov_sta_state_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int wifi_state; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_1__* g_prov ;

esp_err_t app_prov_get_wifi_state(wifi_prov_sta_state_t* state)
{
    if (g_prov == ((void*)0) || state == ((void*)0)) {
        return ESP_FAIL;
    }

    *state = g_prov->wifi_state;
    return ESP_OK;
}
