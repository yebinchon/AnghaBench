
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int (* poll_cmd_done ) (TYPE_1__*) ;} ;
typedef TYPE_1__ spi_flash_host_driver_t ;
typedef int spi_dev_t ;


 int ADDRESS_MASK_24BIT ;
 int * get_spi_dev (TYPE_1__*) ;
 int spi_flash_ll_program_page (int *,void const*,int) ;
 int spi_flash_ll_set_addr_bitlen (int *,int) ;
 int spi_flash_ll_set_address (int *,int) ;
 int stub1 (TYPE_1__*) ;

void spi_flash_hal_program_page(spi_flash_host_driver_t *host, const void *buffer, uint32_t address, uint32_t length)
{
    spi_dev_t *dev = get_spi_dev(host);
    spi_flash_ll_set_addr_bitlen(dev, 24);
    spi_flash_ll_set_address(dev, (address & ADDRESS_MASK_24BIT) | (length << 24));
    spi_flash_ll_program_page(dev, buffer, length);
    host->poll_cmd_done(host);
}
