
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * filename; } ;
struct TYPE_4__ {TYPE_1__ file_info; scalar_t__ entry_scanned; } ;
typedef TYPE_2__ mz_zip ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ mz_zip_goto_first_entry (void*) ;
 scalar_t__ mz_zip_goto_next_entry (void*) ;
 scalar_t__ mz_zip_path_compare (int *,char const*,int ) ;

int32_t mz_zip_locate_entry(void *handle, const char *filename, uint8_t ignore_case)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;
    int32_t result = 0;

    if (zip == ((void*)0) || filename == ((void*)0))
        return MZ_PARAM_ERROR;


    if ((zip->entry_scanned) && (zip->file_info.filename != ((void*)0)))
    {
        result = mz_zip_path_compare(zip->file_info.filename, filename, ignore_case);
        if (result == 0)
            return MZ_OK;
    }


    err = mz_zip_goto_first_entry(handle);
    while (err == MZ_OK)
    {
        result = mz_zip_path_compare(zip->file_info.filename, filename, ignore_case);
        if (result == 0)
            return MZ_OK;

        err = mz_zip_goto_next_entry(handle);
    }

    return err;
}
