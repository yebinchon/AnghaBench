
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zip_handle; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef int int32_t ;


 scalar_t__ MZ_OK ;
 int MZ_PARAM_ERROR ;
 int mz_zip_entry_is_dir (int ) ;
 scalar_t__ mz_zip_reader_is_open (void*) ;

int32_t mz_zip_reader_entry_is_dir(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    if (mz_zip_reader_is_open(handle) != MZ_OK)
        return MZ_PARAM_ERROR;
    return mz_zip_entry_is_dir(reader->zip_handle);
}
