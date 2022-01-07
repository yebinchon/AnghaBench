
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * zip_handle; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_writer_is_open(void *handle)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    if (writer == ((void*)0))
        return MZ_PARAM_ERROR;
    if (writer->zip_handle == ((void*)0))
        return MZ_PARAM_ERROR;
    return MZ_OK;
}
