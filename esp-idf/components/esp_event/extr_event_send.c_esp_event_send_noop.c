
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system_event_t ;
typedef int esp_err_t ;


 int ESP_OK ;

esp_err_t esp_event_send_noop(system_event_t *event)
{
    return ESP_OK;
}
