
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * file_info; int zip_handle; int * pattern; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ mz_zip_entry_get_info (int ,int **) ;
 scalar_t__ mz_zip_entry_is_open (int ) ;
 scalar_t__ mz_zip_goto_first_entry (int ) ;
 scalar_t__ mz_zip_locate_first_entry (int ,TYPE_1__*,int ) ;
 int mz_zip_reader_entry_close (void*) ;
 scalar_t__ mz_zip_reader_is_open (void*) ;
 int mz_zip_reader_locate_entry_cb ;

int32_t mz_zip_reader_goto_first_entry(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;

    if (mz_zip_reader_is_open(handle) != MZ_OK)
        return MZ_PARAM_ERROR;

    if (mz_zip_entry_is_open(reader->zip_handle) == MZ_OK)
        mz_zip_reader_entry_close(handle);

    if (reader->pattern == ((void*)0))
        err = mz_zip_goto_first_entry(reader->zip_handle);
    else
        err = mz_zip_locate_first_entry(reader->zip_handle, reader, mz_zip_reader_locate_entry_cb);

    reader->file_info = ((void*)0);
    if (err == MZ_OK)
        err = mz_zip_entry_get_info(reader->zip_handle, &reader->file_info);

    return err;
}
