
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* file_info; int zip_handle; } ;
typedef TYPE_2__ mz_zip_reader ;
typedef int int32_t ;
struct TYPE_3__ {int extrafield_size; int extrafield; } ;


 scalar_t__ MZ_OK ;
 int MZ_PARAM_ERROR ;
 int MZ_ZIP_EXTENSION_SIGN ;
 scalar_t__ mz_zip_entry_is_open (int ) ;
 int mz_zip_extrafield_contains (int ,int ,int ,int *) ;

int32_t mz_zip_reader_entry_has_sign(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;

    if (reader == ((void*)0) || mz_zip_entry_is_open(reader->zip_handle) != MZ_OK)
        return MZ_PARAM_ERROR;

    return mz_zip_extrafield_contains(reader->file_info->extrafield,
        reader->file_info->extrafield_size, MZ_ZIP_EXTENSION_SIGN, ((void*)0));
}
