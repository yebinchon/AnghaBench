
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {struct TYPE_9__* K1; struct TYPE_9__* K2; struct TYPE_9__* iv; int sched; } ;
typedef TYPE_1__* TCCmacState_t ;
typedef int TCAesKeySched_t ;


 int TC_AES_BLOCK_SIZE ;
 int TC_CRYPTO_FAIL ;
 int TC_CRYPTO_SUCCESS ;
 int _set (TYPE_1__*,int ,int) ;
 int gf_double (TYPE_1__*,TYPE_1__*) ;
 int tc_aes128_set_encrypt_key (int ,int const*) ;
 int tc_aes_encrypt (TYPE_1__*,TYPE_1__*,int ) ;
 int tc_cmac_init (TYPE_1__*) ;

int tc_cmac_setup(TCCmacState_t s, const uint8_t *key, TCAesKeySched_t sched)
{


    if (s == (TCCmacState_t) 0 ||
            key == (const uint8_t *) 0) {
        return TC_CRYPTO_FAIL;
    }


    _set(s, 0, sizeof(*s));
    s->sched = sched;


    tc_aes128_set_encrypt_key(s->sched, key);


    _set(s->iv, 0, TC_AES_BLOCK_SIZE);
    tc_aes_encrypt(s->iv, s->iv, s->sched);
    gf_double (s->K1, s->iv);
    gf_double (s->K2, s->K1);


    tc_cmac_init(s);

    return TC_CRYPTO_SUCCESS;
}
