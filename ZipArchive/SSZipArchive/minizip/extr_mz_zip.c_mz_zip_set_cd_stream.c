
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cd_start_pos; void* cd_stream; } ;
typedef TYPE_1__ mz_zip ;
typedef int int64_t ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_set_cd_stream(void *handle, int64_t cd_start_pos, void *cd_stream)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == ((void*)0) || cd_stream == ((void*)0))
        return MZ_PARAM_ERROR;
    zip->cd_stream = cd_stream;
    zip->cd_start_pos = cd_start_pos;
    return MZ_OK;
}
