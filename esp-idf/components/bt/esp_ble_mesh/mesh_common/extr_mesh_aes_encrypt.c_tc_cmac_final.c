
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {unsigned int leftover_offset; int* leftover; int* iv; int sched; scalar_t__ K2; scalar_t__ K1; } ;
typedef TYPE_1__* TCCmacState_t ;


 unsigned int TC_AES_BLOCK_SIZE ;
 int TC_CMAC_PADDING ;
 int TC_CRYPTO_FAIL ;
 int TC_CRYPTO_SUCCESS ;
 int _set (int*,int ,size_t) ;
 int tc_aes_encrypt (int*,int*,int ) ;
 int tc_cmac_erase (TYPE_1__*) ;

int tc_cmac_final(uint8_t *tag, TCCmacState_t s)
{
    uint8_t *k;
    unsigned int i;


    if (tag == (uint8_t *) 0 ||
            s == (TCCmacState_t) 0) {
        return TC_CRYPTO_FAIL;
    }

    if (s->leftover_offset == TC_AES_BLOCK_SIZE) {

        k = (uint8_t *) s->K1;
    } else {

        size_t remaining = TC_AES_BLOCK_SIZE - s->leftover_offset;

        _set(&s->leftover[s->leftover_offset], 0, remaining);
        s->leftover[s->leftover_offset] = TC_CMAC_PADDING;
        k = (uint8_t *) s->K2;
    }
    for (i = 0; i < TC_AES_BLOCK_SIZE; ++i) {
        s->iv[i] ^= s->leftover[i] ^ k[i];
    }

    tc_aes_encrypt(tag, s->iv, s->sched);


    tc_cmac_erase(s);

    return TC_CRYPTO_SUCCESS;
}
