
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int extra_dummy; int clock_conf; int cs_num; } ;
typedef TYPE_1__ spi_flash_memspi_data_t ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ spi_flash_host_driver_t ;
typedef int spi_dev_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int SPI1 ;
 int * get_spi_dev (TYPE_2__*) ;
 int spi_flash_ll_reset (int *) ;
 int spi_flash_ll_set_clock (int *,int *) ;
 int spi_flash_ll_set_cs_pin (int *,int ) ;

esp_err_t spi_flash_hal_device_config(spi_flash_host_driver_t *host)
{
    spi_flash_memspi_data_t *drv_data = (spi_flash_memspi_data_t *)host->driver_data;
    spi_dev_t *dev = get_spi_dev(host);
    spi_flash_ll_reset(dev);
    spi_flash_ll_set_cs_pin(dev, drv_data->cs_num);
    spi_flash_ll_set_clock(dev, &drv_data->clock_conf);






    if (dev == &SPI1) {

        extern uint8_t g_rom_spiflash_dummy_len_plus[];
        g_rom_spiflash_dummy_len_plus[1] = drv_data->extra_dummy;
    }
    return ESP_OK;
}
