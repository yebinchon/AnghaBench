
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int recover; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_set_recover(void *handle, uint8_t recover)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;
    zip->recover = recover;
    return MZ_OK;
}
