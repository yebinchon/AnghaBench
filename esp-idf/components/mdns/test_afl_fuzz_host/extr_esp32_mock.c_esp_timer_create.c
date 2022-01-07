
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_timer_handle_t ;
typedef int esp_timer_create_args_t ;
typedef int esp_err_t ;


 int ESP_OK ;

esp_err_t esp_timer_create(const esp_timer_create_args_t* create_args,
                           esp_timer_handle_t* out_handle)
{
    return ESP_OK;
}
