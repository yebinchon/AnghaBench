
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spi_flash_host_driver_t ;


 int get_spi_dev (int *) ;
 int spi_flash_ll_cmd_is_done (int ) ;

void spi_flash_hal_poll_cmd_done(spi_flash_host_driver_t *host)
{
    while (!spi_flash_ll_cmd_is_done(get_spi_dev(host))) {

    }
}
