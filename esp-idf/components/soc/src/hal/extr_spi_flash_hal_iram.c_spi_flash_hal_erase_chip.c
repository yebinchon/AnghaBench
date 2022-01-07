
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* poll_cmd_done ) (TYPE_1__*) ;} ;
typedef TYPE_1__ spi_flash_host_driver_t ;
typedef int spi_dev_t ;


 int * get_spi_dev (TYPE_1__*) ;
 int spi_flash_ll_erase_chip (int *) ;
 int stub1 (TYPE_1__*) ;

void spi_flash_hal_erase_chip(spi_flash_host_driver_t *host)
{
    spi_dev_t *dev = get_spi_dev(host);
    spi_flash_ll_erase_chip(dev);
    host->poll_cmd_done(host);
}
