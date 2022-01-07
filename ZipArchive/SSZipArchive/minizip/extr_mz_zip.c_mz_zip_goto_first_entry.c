
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cd_start_pos; int cd_current_pos; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_PARAM_ERROR ;
 int mz_zip_goto_next_entry_int (void*) ;

int32_t mz_zip_goto_first_entry(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;

    zip->cd_current_pos = zip->cd_start_pos;

    return mz_zip_goto_next_entry_int(handle);
}
