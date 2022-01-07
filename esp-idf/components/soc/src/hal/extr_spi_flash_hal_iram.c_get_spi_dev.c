
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * spi; } ;
typedef TYPE_1__ spi_flash_memspi_data_t ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ spi_flash_host_driver_t ;
typedef int spi_dev_t ;



__attribute__((used)) static inline spi_dev_t *get_spi_dev(spi_flash_host_driver_t *host)
{
    return ((spi_flash_memspi_data_t *)host->driver_data)->spi;
}
