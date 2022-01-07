
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int countdown; scalar_t__ leftover_offset; int leftover; int iv; } ;
typedef TYPE_1__* TCCmacState_t ;


 int MAX_CALLS ;
 int TC_AES_BLOCK_SIZE ;
 int TC_CRYPTO_FAIL ;
 int TC_CRYPTO_SUCCESS ;
 int _set (int ,int ,int ) ;

int tc_cmac_init(TCCmacState_t s)
{

    if (s == (TCCmacState_t) 0) {
        return TC_CRYPTO_FAIL;
    }


    _set(s->iv, 0, TC_AES_BLOCK_SIZE);


    _set(s->leftover, 0, TC_AES_BLOCK_SIZE);
    s->leftover_offset = 0;


    s->countdown = MAX_CALLS;

    return TC_CRYPTO_SUCCESS;
}
