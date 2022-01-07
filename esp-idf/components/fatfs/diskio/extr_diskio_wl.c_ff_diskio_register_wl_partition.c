
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wl_handle_t ;
struct TYPE_3__ {int * ioctl; int * write; int * read; int * status; int * init; } ;
typedef TYPE_1__ ff_diskio_impl_t ;
typedef int esp_err_t ;
typedef size_t BYTE ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 size_t FF_VOLUMES ;
 int ff_diskio_register (size_t,TYPE_1__ const*) ;
 int * ff_wl_handles ;
 int ff_wl_initialize ;
 int ff_wl_ioctl ;
 int ff_wl_read ;
 int ff_wl_status ;
 int ff_wl_write ;

esp_err_t ff_diskio_register_wl_partition(BYTE pdrv, wl_handle_t flash_handle)
{
    if (pdrv >= FF_VOLUMES) {
        return ESP_ERR_INVALID_ARG;
    }
    static const ff_diskio_impl_t wl_impl = {
        .init = &ff_wl_initialize,
        .status = &ff_wl_status,
        .read = &ff_wl_read,
        .write = &ff_wl_write,
        .ioctl = &ff_wl_ioctl
    };
    ff_wl_handles[pdrv] = flash_handle;
    ff_diskio_register(pdrv, &wl_impl);
    return ESP_OK;
}
