
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ error; int crypt; } ;
typedef TYPE_1__ mz_crypt_aes ;
typedef int int32_t ;


 scalar_t__ CCCryptorUpdate (int ,int *,int ,int *,int ,size_t*) ;
 int MZ_AES_BLOCK_SIZE ;
 int MZ_HASH_ERROR ;
 int MZ_PARAM_ERROR ;
 scalar_t__ kCCSuccess ;

int32_t mz_crypt_aes_decrypt(void *handle, uint8_t *buf, int32_t size)
{
    mz_crypt_aes *aes = (mz_crypt_aes *)handle;
    size_t data_moved = 0;

    if (aes == ((void*)0) || buf == ((void*)0))
        return MZ_PARAM_ERROR;
    if (size != MZ_AES_BLOCK_SIZE)
        return MZ_PARAM_ERROR;

    aes->error = CCCryptorUpdate(aes->crypt, buf, size, buf, size, &data_moved);

    if (aes->error != kCCSuccess)
        return MZ_HASH_ERROR;

    return size;
}
