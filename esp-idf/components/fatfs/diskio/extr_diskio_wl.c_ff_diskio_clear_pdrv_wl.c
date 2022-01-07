
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wl_handle_t ;


 int FF_VOLUMES ;
 scalar_t__ WL_INVALID_HANDLE ;
 scalar_t__* ff_wl_handles ;

void ff_diskio_clear_pdrv_wl(wl_handle_t flash_handle)
{
    for (int i = 0; i < FF_VOLUMES; i++) {
        if (flash_handle == ff_wl_handles[i]) {
            ff_wl_handles[i] = WL_INVALID_HANDLE;
        }
    }
}
