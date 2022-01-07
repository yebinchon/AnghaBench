
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * os_func_data; int * os_func; } ;
typedef TYPE_1__ esp_flash_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int esp_flash_spi1_default_os_functions ;
 int main_flash_arg ;

esp_err_t esp_flash_app_init_os_functions(esp_flash_t* chip)
{
    chip->os_func = &esp_flash_spi1_default_os_functions;
    chip->os_func_data = &main_flash_arg;
    return ESP_OK;
}
