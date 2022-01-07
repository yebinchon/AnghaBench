
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cd_current_pos; } ;
typedef TYPE_1__ mz_zip ;
typedef int int64_t ;


 int MZ_PARAM_ERROR ;

int64_t mz_zip_get_entry(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;

    return zip->cd_current_pos;
}
