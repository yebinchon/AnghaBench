
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * file_info; int zip_handle; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ mz_zip_entry_get_info (int ,int **) ;
 scalar_t__ mz_zip_entry_is_open (int ) ;
 scalar_t__ mz_zip_locate_entry (int ,char const*,int ) ;
 int mz_zip_reader_entry_close (void*) ;

int32_t mz_zip_reader_locate_entry(void *handle, const char *filename, uint8_t ignore_case)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;

    if (mz_zip_entry_is_open(reader->zip_handle) == MZ_OK)
        mz_zip_reader_entry_close(handle);

    err = mz_zip_locate_entry(reader->zip_handle, filename, ignore_case);

    reader->file_info = ((void*)0);
    if (err == MZ_OK)
        err = mz_zip_entry_get_info(reader->zip_handle, &reader->file_info);

    return err;
}
