
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sha256; int zip_handle; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef scalar_t__ int32_t ;


 int mz_crypt_sha_update (int *,void const*,scalar_t__) ;
 scalar_t__ mz_zip_entry_write (int ,void const*,scalar_t__) ;

int32_t mz_zip_writer_entry_write(void *handle, const void *buf, int32_t len)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t written = 0;
    written = mz_zip_entry_write(writer->zip_handle, buf, len);

    if ((written > 0) && (writer->sha256 != ((void*)0)))
        mz_crypt_sha_update(writer->sha256, buf, written);

    return written;
}
