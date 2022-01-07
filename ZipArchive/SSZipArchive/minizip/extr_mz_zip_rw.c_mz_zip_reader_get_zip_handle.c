
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* zip_handle; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_reader_get_zip_handle(void *handle, void **zip_handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    if (zip_handle == ((void*)0))
        return MZ_PARAM_ERROR;
    *zip_handle = reader->zip_handle;
    if (*zip_handle == ((void*)0))
        return MZ_EXIST_ERROR;
    return MZ_OK;
}
