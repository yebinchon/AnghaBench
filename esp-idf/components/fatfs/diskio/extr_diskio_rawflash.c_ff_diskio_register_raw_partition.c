
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ioctl; int * write; int * read; int * status; int * init; } ;
typedef TYPE_1__ ff_diskio_impl_t ;
typedef int esp_partition_t ;
typedef int esp_err_t ;
typedef size_t BYTE ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 size_t FF_VOLUMES ;
 int ff_diskio_register (size_t,TYPE_1__ const*) ;
 int const** ff_raw_handles ;
 int ff_raw_initialize ;
 int ff_raw_ioctl ;
 int ff_raw_read ;
 int ff_raw_status ;
 int ff_raw_write ;

esp_err_t ff_diskio_register_raw_partition(BYTE pdrv, const esp_partition_t* part_handle)
{
    if (pdrv >= FF_VOLUMES) {
        return ESP_ERR_INVALID_ARG;
    }
    static const ff_diskio_impl_t raw_impl = {
        .init = &ff_raw_initialize,
        .status = &ff_raw_status,
        .read = &ff_raw_read,
        .write = &ff_raw_write,
        .ioctl = &ff_raw_ioctl
    };
    ff_diskio_register(pdrv, &raw_impl);
    ff_raw_handles[pdrv] = part_handle;
    return ESP_OK;

}
