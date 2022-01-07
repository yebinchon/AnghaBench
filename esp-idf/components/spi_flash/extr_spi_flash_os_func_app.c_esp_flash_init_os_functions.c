
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * os_func_data; int * os_func; } ;
typedef TYPE_1__ esp_flash_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int esp_flash_spi1_default_os_functions ;
 int esp_flash_spi23_default_os_functions ;
 int spi1_arg ;
 int spi2_arg ;
 int spi3_arg ;

esp_err_t esp_flash_init_os_functions(esp_flash_t *chip, int host_id)
{
    if (host_id == 0) {

        chip->os_func = &esp_flash_spi1_default_os_functions;
        chip->os_func_data = &spi1_arg;
    } else if (host_id == 1 || host_id == 2) {

        chip->os_func = &esp_flash_spi23_default_os_functions;
        chip->os_func_data = (host_id == 1) ? &spi2_arg : &spi3_arg;
    } else {
        return ESP_ERR_INVALID_ARG;
    }
    return ESP_OK;
}
