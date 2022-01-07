
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hash; int zip_handle; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int32_t ;


 int mz_crypt_sha_update (int *,void*,scalar_t__) ;
 scalar_t__ mz_zip_entry_read (int ,void*,scalar_t__) ;

int32_t mz_zip_reader_entry_read(void *handle, void *buf, int32_t len)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t read = 0;
    read = mz_zip_entry_read(reader->zip_handle, buf, len);

    if ((read > 0) && (reader->hash != ((void*)0)))
        mz_crypt_sha_update(reader->hash, buf, read);

    return read;
}
