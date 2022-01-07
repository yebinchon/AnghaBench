
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ comment_size; scalar_t__ extrafield_size; scalar_t__ filename_size; } ;
struct TYPE_4__ {TYPE_1__ file_info; int cd_current_pos; } ;
typedef TYPE_2__ mz_zip ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;


 int MZ_PARAM_ERROR ;
 scalar_t__ MZ_ZIP_SIZE_CD_ITEM ;
 int mz_zip_goto_next_entry_int (void*) ;

int32_t mz_zip_goto_next_entry(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;

    zip->cd_current_pos += (int64_t)MZ_ZIP_SIZE_CD_ITEM + zip->file_info.filename_size +
        zip->file_info.extrafield_size + zip->file_info.comment_size;

    return mz_zip_goto_next_entry_int(handle);
}
