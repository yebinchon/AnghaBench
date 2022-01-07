
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spi_flash_host_driver_t ;
typedef int spi_dev_t ;


 int SPI0 ;
 int SPI1 ;
 int * get_spi_dev (int *) ;
 int spi_flash_ll_host_idle (int *) ;

bool spi_flash_hal_host_idle(spi_flash_host_driver_t *host)
{
    spi_dev_t *dev = get_spi_dev(host);
    bool idle = spi_flash_ll_host_idle(dev);



    if (dev == &SPI1) {
        idle &= spi_flash_ll_host_idle(&SPI0);
    }

    return idle;
}
