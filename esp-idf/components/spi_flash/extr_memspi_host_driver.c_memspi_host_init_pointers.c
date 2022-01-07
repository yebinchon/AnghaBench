
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * flush_cache; TYPE_2__* driver_data; } ;
typedef TYPE_1__ spi_flash_host_driver_t ;
struct TYPE_8__ {int * spi; } ;
typedef TYPE_2__ memspi_host_data_t ;
typedef int memspi_host_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int SPI1 ;
 int esp_flash_default_host ;
 int memcpy (TYPE_1__*,int *,int) ;
 scalar_t__ spi_flash_hal_init (TYPE_2__*,int const*) ;

esp_err_t memspi_host_init_pointers(spi_flash_host_driver_t *host, memspi_host_data_t *data, const memspi_host_config_t *cfg)
{
    memcpy(host, &esp_flash_default_host, sizeof(spi_flash_host_driver_t));
    esp_err_t err = spi_flash_hal_init(data, cfg);
    if (err != ESP_OK) {
        return err;
    }

    host->driver_data = data;

    if (data->spi != &SPI1) {
        host->flush_cache = ((void*)0);
    }
    return ESP_OK;
}
