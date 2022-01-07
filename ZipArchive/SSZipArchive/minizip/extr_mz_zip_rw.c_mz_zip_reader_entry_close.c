
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int zip_handle; int hash_digest_size; int hash_algorithm; int * hash; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int32_t ;
typedef int computed_hash ;


 scalar_t__ MZ_CRC_ERROR ;
 int MZ_HASH_MAX_SIZE ;
 scalar_t__ MZ_OK ;
 scalar_t__ memcmp (int *,int *,int ) ;
 int mz_crypt_sha_delete (int **) ;
 int mz_crypt_sha_end (int *,int *,int) ;
 scalar_t__ mz_zip_entry_close (int ) ;
 scalar_t__ mz_zip_reader_entry_get_hash (void*,int ,int *,int ) ;

int32_t mz_zip_reader_entry_close(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;
    int32_t err_close = MZ_OK;

    int32_t err_hash = MZ_OK;
    uint8_t computed_hash[MZ_HASH_MAX_SIZE];
    uint8_t expected_hash[MZ_HASH_MAX_SIZE];

    if (reader->hash != ((void*)0))
    {
        mz_crypt_sha_end(reader->hash, computed_hash, sizeof(computed_hash));
        mz_crypt_sha_delete(&reader->hash);

        err_hash = mz_zip_reader_entry_get_hash(handle, reader->hash_algorithm, expected_hash,
            reader->hash_digest_size);

        if (err_hash == MZ_OK)
        {

            if (memcmp(computed_hash, expected_hash, reader->hash_digest_size) != 0)
                err = MZ_CRC_ERROR;
        }
    }


    err_close = mz_zip_entry_close(reader->zip_handle);
    if (err == MZ_OK)
        err = err_close;
    return err;
}
