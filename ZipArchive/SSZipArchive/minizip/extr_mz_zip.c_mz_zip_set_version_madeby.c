
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int version_madeby; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_set_version_madeby(void *handle, uint16_t version_madeby)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;
    zip->version_madeby = version_madeby;
    return MZ_OK;
}
