
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cd_start_pos; scalar_t__ cd_size; scalar_t__ cd_current_pos; } ;
typedef TYPE_1__ mz_zip ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;


 int MZ_PARAM_ERROR ;
 int mz_zip_goto_next_entry_int (void*) ;

int32_t mz_zip_goto_entry(void *handle, int64_t cd_pos)
{
    mz_zip *zip = (mz_zip *)handle;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;

    if (cd_pos < zip->cd_start_pos || cd_pos > zip->cd_start_pos + zip->cd_size)
        return MZ_PARAM_ERROR;

    zip->cd_current_pos = cd_pos;

    return mz_zip_goto_next_entry_int(handle);
}
