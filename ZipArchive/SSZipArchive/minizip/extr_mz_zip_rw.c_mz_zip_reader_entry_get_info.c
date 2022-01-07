
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * file_info; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef int mz_zip_file ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_EXIST_ERROR ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ mz_zip_reader_is_open (void*) ;

int32_t mz_zip_reader_entry_get_info(void *handle, mz_zip_file **file_info)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;
    if (file_info == ((void*)0) || mz_zip_reader_is_open(handle) != MZ_OK)
        return MZ_PARAM_ERROR;
    *file_info = reader->file_info;
    if (*file_info == ((void*)0))
        return MZ_EXIST_ERROR;
    return err;
}
