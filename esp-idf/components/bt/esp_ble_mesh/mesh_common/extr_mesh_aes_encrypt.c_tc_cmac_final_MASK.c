#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {unsigned int leftover_offset; int* leftover; int* iv; int /*<<< orphan*/  sched; scalar_t__ K2; scalar_t__ K1; } ;
typedef  TYPE_1__* TCCmacState_t ;

/* Variables and functions */
 unsigned int TC_AES_BLOCK_SIZE ; 
 int TC_CMAC_PADDING ; 
 int TC_CRYPTO_FAIL ; 
 int TC_CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(uint8_t *tag, TCCmacState_t s)
{
    uint8_t *k;
    unsigned int i;

    /* input sanity check: */
    if (tag == (uint8_t *) 0 ||
            s == (TCCmacState_t) 0) {
        return TC_CRYPTO_FAIL;
    }

    if (s->leftover_offset == TC_AES_BLOCK_SIZE) {
        /* the last message block is a full-sized block */
        k = (uint8_t *) s->K1;
    } else {
        /* the final message block is not a full-sized  block */
        size_t remaining = TC_AES_BLOCK_SIZE - s->leftover_offset;

        FUNC0(&s->leftover[s->leftover_offset], 0, remaining);
        s->leftover[s->leftover_offset] = TC_CMAC_PADDING;
        k = (uint8_t *) s->K2;
    }
    for (i = 0; i < TC_AES_BLOCK_SIZE; ++i) {
        s->iv[i] ^= s->leftover[i] ^ k[i];
    }

    FUNC1(tag, s->iv, s->sched);

    /* erasing state: */
    FUNC2(s);

    return TC_CRYPTO_SUCCESS;
}