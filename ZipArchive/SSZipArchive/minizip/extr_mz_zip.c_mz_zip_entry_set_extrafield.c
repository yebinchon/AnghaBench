
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int extrafield_size; int const* extrafield; } ;
struct TYPE_4__ {TYPE_1__ file_info; } ;
typedef TYPE_2__ mz_zip ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ mz_zip_entry_is_open (void*) ;

int32_t mz_zip_entry_set_extrafield(void *handle, const uint8_t *extrafield, uint16_t extrafield_size)
{
    mz_zip *zip = (mz_zip *)handle;

    if (zip == ((void*)0) || mz_zip_entry_is_open(handle) != MZ_OK)
        return MZ_PARAM_ERROR;

    zip->file_info.extrafield = extrafield;
    zip->file_info.extrafield_size = extrafield_size;
    return MZ_OK;
}
