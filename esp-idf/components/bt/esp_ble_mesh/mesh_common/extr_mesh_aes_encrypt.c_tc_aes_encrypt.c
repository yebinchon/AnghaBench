
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int state ;
struct TYPE_3__ {scalar_t__ words; } ;
typedef TYPE_1__* const TCAesKeySched_t ;


 int Nb ;
 int Nk ;
 int Nr ;
 int TC_CRYPTO_FAIL ;
 int TC_CRYPTO_SUCCESS ;
 int TC_ZERO_BYTE ;
 int _copy (int const*,int,int const*,int) ;
 int _set (int const*,int ,int) ;
 int add_round_key (int const*,scalar_t__) ;
 int mix_columns (int const*) ;
 int shift_rows (int const*) ;
 int sub_bytes (int const*) ;

int tc_aes_encrypt(uint8_t *out, const uint8_t *in, const TCAesKeySched_t s)
{
    uint8_t state[Nk * Nb];
    unsigned int i;

    if (out == (uint8_t *) 0) {
        return TC_CRYPTO_FAIL;
    } else if (in == (const uint8_t *) 0) {
        return TC_CRYPTO_FAIL;
    } else if (s == (TCAesKeySched_t) 0) {
        return TC_CRYPTO_FAIL;
    }

    (void)_copy(state, sizeof(state), in, sizeof(state));
    add_round_key(state, s->words);

    for (i = 0; i < (Nr - 1); ++i) {
        sub_bytes(state);
        shift_rows(state);
        mix_columns(state);
        add_round_key(state, s->words + Nb * (i + 1));
    }

    sub_bytes(state);
    shift_rows(state);
    add_round_key(state, s->words + Nb * (i + 1));

    (void)_copy(out, sizeof(state), state, sizeof(state));


    _set(state, TC_ZERO_BYTE, sizeof(state));

    return TC_CRYPTO_SUCCESS;
}
