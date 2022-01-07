
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int number_entry; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_get_number_entry(void *handle, uint64_t *number_entry)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == ((void*)0) || number_entry == ((void*)0))
        return MZ_PARAM_ERROR;
    *number_entry = zip->number_entry;
    return MZ_OK;
}
