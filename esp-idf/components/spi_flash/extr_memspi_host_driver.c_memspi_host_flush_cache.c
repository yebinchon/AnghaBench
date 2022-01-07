
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ spi_flash_host_driver_t ;
struct TYPE_5__ {int * spi; } ;
typedef TYPE_2__ memspi_host_data_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int SPI1 ;
 int spi_flash_check_and_flush_cache (int ,int ) ;

esp_err_t memspi_host_flush_cache(spi_flash_host_driver_t* driver, uint32_t addr, uint32_t size)
{
    if (((memspi_host_data_t*)(driver->driver_data))->spi == &SPI1) {
        spi_flash_check_and_flush_cache(addr, size);
    }
    return ESP_OK;
}
