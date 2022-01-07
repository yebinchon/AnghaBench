
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int raw; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_writer_get_raw(void *handle, uint8_t *raw)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    if (raw == ((void*)0))
        return MZ_PARAM_ERROR;
    *raw = writer->raw;
    return MZ_OK;
}
