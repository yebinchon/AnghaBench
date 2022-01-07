
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mz_zip_file ;
struct TYPE_2__ {int open_mode; int file_info; int entry_scanned; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_OPEN_MODE_WRITE ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_entry_get_info(void *handle, mz_zip_file **file_info)
{
    mz_zip *zip = (mz_zip *)handle;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;

    if ((zip->open_mode & MZ_OPEN_MODE_WRITE) == 0)
    {
        if (!zip->entry_scanned)
            return MZ_PARAM_ERROR;
    }

    *file_info = &zip->file_info;
    return MZ_OK;
}
