
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* poll_cmd_done ) (TYPE_1__*) ;} ;
typedef TYPE_1__ spi_flash_host_driver_t ;
typedef int spi_dev_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int * get_spi_dev (TYPE_1__*) ;
 int spi_flash_ll_set_write_protect (int *,int) ;
 int stub1 (TYPE_1__*) ;

esp_err_t spi_flash_hal_set_write_protect(spi_flash_host_driver_t *host, bool wp)
{
    spi_dev_t *dev = get_spi_dev(host);
    spi_flash_ll_set_write_protect(dev, wp);
    host->poll_cmd_done(host);
    return ESP_OK;
}
