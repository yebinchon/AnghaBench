
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_4__ {int * round_key; int * state; } ;
typedef TYPE_1__ AVAES ;


 int addkey_d (int const*,int *,int *) ;
 int addkey_s (int *,int const*,int *) ;
 int aes_crypt (TYPE_1__*,int ,int ,int ) ;
 int dec_multbl ;
 int inv_sbox ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static void aes_decrypt(AVAES *a, uint8_t *dst, const uint8_t *src,
                        int count, uint8_t *iv, int rounds)
{
    while (count--) {
        addkey_s(&a->state[1], src, &a->round_key[rounds]);
        aes_crypt(a, 0, inv_sbox, dec_multbl);
        if (iv) {
            addkey_s(&a->state[0], iv, &a->state[0]);
            memcpy(iv, src, 16);
        }
        addkey_d(dst, &a->state[0], &a->round_key[0]);
        src += 16;
        dst += 16;
    }
}
