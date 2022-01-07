
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* stream; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_get_stream(void *handle, void **stream)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == ((void*)0) || stream == ((void*)0))
        return MZ_PARAM_ERROR;
    *stream = zip->stream;
    if (*stream == ((void*)0))
        return MZ_EXIST_ERROR;
    return MZ_OK;
}
