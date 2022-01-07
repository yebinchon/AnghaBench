
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_handler_t ;
typedef int esp_event_base_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int esp_event_handler_unregister_with (int *,int ,int ,int ) ;
 int * s_default_loop ;

esp_err_t esp_event_handler_unregister(esp_event_base_t event_base, int32_t event_id,
        esp_event_handler_t event_handler)
{
    if (s_default_loop == ((void*)0)) {
        return ESP_ERR_INVALID_STATE;
    }

    return esp_event_handler_unregister_with(s_default_loop, event_base, event_id,
            event_handler);
}
