
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* host; struct TYPE_4__* driver_data; } ;
typedef TYPE_1__ esp_flash_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int free (TYPE_1__*) ;

esp_err_t spi_bus_remove_flash_device(esp_flash_t *chip)
{
    if (chip==((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (chip->host) {
        free(chip->host->driver_data);
        free(chip->host);
    }
    free(chip);
    return ESP_OK;
}
