
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int extra_dummy; } ;
typedef TYPE_1__ spi_flash_memspi_data_t ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ spi_flash_host_driver_t ;
typedef int spi_dev_t ;
typedef int esp_flash_io_mode_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int * get_spi_dev (TYPE_2__*) ;
 int spi_flash_ll_set_addr_bitlen (int *,int ) ;
 int spi_flash_ll_set_command8 (int *,int ) ;
 int spi_flash_ll_set_dummy (int *,int) ;
 int spi_flash_ll_set_miso_bitlen (int *,int ) ;
 int spi_flash_ll_set_mosi_bitlen (int *,int ) ;
 int spi_flash_ll_set_read_mode (int *,int ) ;

esp_err_t spi_flash_hal_configure_host_io_mode(
    spi_flash_host_driver_t *host,
    uint32_t command,
    uint32_t addr_bitlen,
    int dummy_cyclelen_base,
    esp_flash_io_mode_t io_mode)
{

    int dummy_cyclelen = dummy_cyclelen_base + ((spi_flash_memspi_data_t *)host->driver_data)->extra_dummy;

    spi_dev_t *dev = get_spi_dev(host);
    spi_flash_ll_set_command8(dev, command);
    spi_flash_ll_set_addr_bitlen(dev, addr_bitlen);
    spi_flash_ll_set_dummy(dev, dummy_cyclelen);

    spi_flash_ll_set_miso_bitlen(dev, 0);
    spi_flash_ll_set_mosi_bitlen(dev, 0);
    spi_flash_ll_set_read_mode(dev, io_mode);
    return ESP_OK;
}
