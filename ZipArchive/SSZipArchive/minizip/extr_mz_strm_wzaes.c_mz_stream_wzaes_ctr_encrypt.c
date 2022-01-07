
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ crypt_pos; int * crypt_block; int aes; int * nonce; } ;
typedef TYPE_1__ mz_stream_wzaes ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_AES_BLOCK_SIZE ;
 scalar_t__ MZ_OK ;
 int memcpy (int *,int *,scalar_t__) ;
 int mz_crypt_aes_encrypt (int ,int *,int) ;

__attribute__((used)) static int32_t mz_stream_wzaes_ctr_encrypt(void *stream, uint8_t *buf, int32_t size)
{
    mz_stream_wzaes *wzaes = (mz_stream_wzaes *)stream;
    uint32_t pos = wzaes->crypt_pos;
    uint32_t i = 0;
    int32_t err = MZ_OK;

    while (i < (uint32_t)size)
    {
        if (pos == MZ_AES_BLOCK_SIZE)
        {
            uint32_t j = 0;


            while (j < 8 && !++wzaes->nonce[j])
                j += 1;


            memcpy(wzaes->crypt_block, wzaes->nonce, MZ_AES_BLOCK_SIZE);
            mz_crypt_aes_encrypt(wzaes->aes, wzaes->crypt_block, sizeof(wzaes->crypt_block));
            pos = 0;
        }

        buf[i++] ^= wzaes->crypt_block[pos++];
    }

    wzaes->crypt_pos = pos;
    return err;
}
