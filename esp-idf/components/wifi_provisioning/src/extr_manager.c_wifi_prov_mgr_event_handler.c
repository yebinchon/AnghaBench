
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system_event_t ;
typedef int esp_err_t ;


 int ESP_OK ;

esp_err_t wifi_prov_mgr_event_handler(void *ctx, system_event_t *event)
{
    return ESP_OK;
}
