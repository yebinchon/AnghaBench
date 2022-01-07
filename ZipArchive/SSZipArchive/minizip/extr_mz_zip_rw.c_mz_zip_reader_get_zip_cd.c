
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int cd_zipped; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_reader_get_zip_cd(void *handle, uint8_t *zip_cd)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    if (zip_cd == ((void*)0))
        return MZ_PARAM_ERROR;
    *zip_cd = reader->cd_zipped;
    return MZ_OK;
}
