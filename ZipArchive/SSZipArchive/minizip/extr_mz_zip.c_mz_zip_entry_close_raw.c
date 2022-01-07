
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int open_mode; } ;
typedef TYPE_1__ mz_zip ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_WRITE ;
 scalar_t__ MZ_PARAM_ERROR ;
 int UINT64_MAX ;
 scalar_t__ mz_zip_entry_is_open (void*) ;
 scalar_t__ mz_zip_entry_read_close (void*,int *,int *,int *) ;
 scalar_t__ mz_zip_entry_write_close (void*,int ,int ,int ) ;

int32_t mz_zip_entry_close_raw(void *handle, int64_t uncompressed_size, uint32_t crc32)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;

    if (zip == ((void*)0) || mz_zip_entry_is_open(handle) != MZ_OK)
        return MZ_PARAM_ERROR;

    if (zip->open_mode & MZ_OPEN_MODE_WRITE)
        err = mz_zip_entry_write_close(handle, crc32, UINT64_MAX, uncompressed_size);
    else
        err = mz_zip_entry_read_close(handle, ((void*)0), ((void*)0), ((void*)0));

    return err;
}
