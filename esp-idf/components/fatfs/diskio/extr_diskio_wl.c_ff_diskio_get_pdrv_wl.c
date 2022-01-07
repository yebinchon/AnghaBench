
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wl_handle_t ;
typedef int BYTE ;


 int FF_VOLUMES ;
 scalar_t__* ff_wl_handles ;

BYTE ff_diskio_get_pdrv_wl(wl_handle_t flash_handle)
{
    for (int i = 0; i < FF_VOLUMES; i++) {
        if (flash_handle == ff_wl_handles[i]) {
            return i;
        }
    }
    return 0xff;
}
