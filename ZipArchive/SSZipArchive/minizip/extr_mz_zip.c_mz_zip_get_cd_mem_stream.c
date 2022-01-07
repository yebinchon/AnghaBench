
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* cd_mem_stream; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_get_cd_mem_stream(void *handle, void **cd_mem_stream)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == ((void*)0) || cd_mem_stream == ((void*)0))
        return MZ_PARAM_ERROR;
    *cd_mem_stream = zip->cd_mem_stream;
    if (*cd_mem_stream == ((void*)0))
        return MZ_EXIST_ERROR;
    return MZ_OK;
}
