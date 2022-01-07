
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; int crypt; } ;
typedef TYPE_1__ mz_crypt_aes ;
typedef scalar_t__ int32_t ;


 scalar_t__ CCCryptorCreate (int ,int ,int ,void const*,scalar_t__,int *,int *) ;
 scalar_t__ MZ_HASH_ERROR ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 int kCCAlgorithmAES ;
 int kCCDecrypt ;
 int kCCOptionECBMode ;
 scalar_t__ kCCSuccess ;
 int mz_crypt_aes_reset (void*) ;

int32_t mz_crypt_aes_set_decrypt_key(void *handle, const void *key, int32_t key_length)
{
    mz_crypt_aes *aes = (mz_crypt_aes *)handle;


    if (aes == ((void*)0) || key == ((void*)0) || key_length == 0)
        return MZ_PARAM_ERROR;

    mz_crypt_aes_reset(handle);

    aes->error = CCCryptorCreate(kCCDecrypt, kCCAlgorithmAES, kCCOptionECBMode,
        key, key_length, ((void*)0), &aes->crypt);

    if (aes->error != kCCSuccess)
        return MZ_HASH_ERROR;

    return MZ_OK;
}
