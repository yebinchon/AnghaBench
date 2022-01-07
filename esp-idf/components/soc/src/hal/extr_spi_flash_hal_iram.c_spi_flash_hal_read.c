
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int (* poll_cmd_done ) (TYPE_1__*) ;} ;
typedef TYPE_1__ spi_flash_host_driver_t ;
typedef int spi_dev_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int * get_spi_dev (TYPE_1__*) ;
 int spi_flash_ll_get_buffer_data (int *,void*,int) ;
 int spi_flash_ll_set_address (int *,int) ;
 int spi_flash_ll_set_miso_bitlen (int *,int) ;
 int spi_flash_ll_user_start (int *) ;
 int stub1 (TYPE_1__*) ;

esp_err_t spi_flash_hal_read(spi_flash_host_driver_t *host, void *buffer, uint32_t address, uint32_t read_len)
{
    spi_dev_t *dev = get_spi_dev(host);

    spi_flash_ll_set_address(dev, address << 8);
    spi_flash_ll_set_miso_bitlen(dev, read_len * 8);
    spi_flash_ll_user_start(dev);
    host->poll_cmd_done(host);
    spi_flash_ll_get_buffer_data(dev, buffer, read_len);
    return ESP_OK;
}
