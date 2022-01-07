
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;
typedef int esp_err_t ;
typedef int TickType_t ;


 int ESP_ERR_INVALID_STATE ;
 int esp_event_post_to (int *,int ,int ,void*,size_t,int ) ;
 int * s_default_loop ;

esp_err_t esp_event_post(esp_event_base_t event_base, int32_t event_id,
        void* event_data, size_t event_data_size, TickType_t ticks_to_wait)
{
    if (s_default_loop == ((void*)0)) {
        return ESP_ERR_INVALID_STATE;
    }

    return esp_event_post_to(s_default_loop, event_base, event_id,
            event_data, event_data_size, ticks_to_wait);
}
