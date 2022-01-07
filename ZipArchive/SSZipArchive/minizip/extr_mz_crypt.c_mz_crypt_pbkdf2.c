
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ux ;
typedef int uu ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ int32_t ;


 int MZ_HASH_SHA1 ;
 int MZ_HASH_SHA1_SIZE ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 int memset (int *,int ,int) ;
 scalar_t__ mz_crypt_hmac_copy (void*,void*) ;
 int mz_crypt_hmac_create (void**) ;
 int mz_crypt_hmac_delete (void**) ;
 scalar_t__ mz_crypt_hmac_end (void*,int *,int) ;
 scalar_t__ mz_crypt_hmac_init (void*,int *,scalar_t__) ;
 int mz_crypt_hmac_set_algorithm (void*,int ) ;
 scalar_t__ mz_crypt_hmac_update (void*,int *,int) ;

int32_t mz_crypt_pbkdf2(uint8_t *password, int32_t password_length, uint8_t *salt,
    int32_t salt_length, int32_t iteration_count, uint8_t *key, int32_t key_length)
{
    void *hmac1 = ((void*)0);
    void *hmac2 = ((void*)0);
    void *hmac3 = ((void*)0);
    int32_t err = MZ_OK;
    uint16_t i = 0;
    uint16_t j = 0;
    uint16_t k = 0;
    uint16_t block_count = 0;
    uint8_t uu[MZ_HASH_SHA1_SIZE];
    uint8_t ux[MZ_HASH_SHA1_SIZE];

    if (password == ((void*)0) || salt == ((void*)0) || key == ((void*)0))
        return MZ_PARAM_ERROR;

    memset(key, 0, key_length);

    mz_crypt_hmac_create(&hmac1);
    mz_crypt_hmac_create(&hmac2);
    mz_crypt_hmac_create(&hmac3);

    mz_crypt_hmac_set_algorithm(hmac1, MZ_HASH_SHA1);
    mz_crypt_hmac_set_algorithm(hmac2, MZ_HASH_SHA1);
    mz_crypt_hmac_set_algorithm(hmac3, MZ_HASH_SHA1);

    err = mz_crypt_hmac_init(hmac1, password, password_length);
    if (err == MZ_OK)
        err = mz_crypt_hmac_init(hmac2, password, password_length);
    if (err == MZ_OK)
        err = mz_crypt_hmac_update(hmac2, salt, salt_length);

    block_count = 1 + ((uint16_t)key_length - 1) / MZ_HASH_SHA1_SIZE;

    for (i = 0; (err == MZ_OK) && (i < block_count); i += 1)
    {
        memset(ux, 0, sizeof(ux));

        err = mz_crypt_hmac_copy(hmac2, hmac3);
        if (err != MZ_OK)
            break;

        uu[0] = (uint8_t)((i + 1) >> 24);
        uu[1] = (uint8_t)((i + 1) >> 16);
        uu[2] = (uint8_t)((i + 1) >> 8);
        uu[3] = (uint8_t)(i + 1);

        for (j = 0, k = 4; j < iteration_count; j += 1)
        {
            err = mz_crypt_hmac_update(hmac3, uu, k);
            if (err == MZ_OK)
                err = mz_crypt_hmac_end(hmac3, uu, sizeof(uu));
            if (err != MZ_OK)
                break;

            for(k = 0; k < MZ_HASH_SHA1_SIZE; k += 1)
                ux[k] ^= uu[k];

            err = mz_crypt_hmac_copy(hmac1, hmac3);
            if (err != MZ_OK)
                break;
        }

        if (err != MZ_OK)
            break;

        j = 0;
        k = i * MZ_HASH_SHA1_SIZE;

        while (j < MZ_HASH_SHA1_SIZE && k < key_length)
            key[k++] = ux[j++];
    }



    mz_crypt_hmac_delete(&hmac3);
    mz_crypt_hmac_delete(&hmac1);
    mz_crypt_hmac_delete(&hmac2);

    return err;
}
