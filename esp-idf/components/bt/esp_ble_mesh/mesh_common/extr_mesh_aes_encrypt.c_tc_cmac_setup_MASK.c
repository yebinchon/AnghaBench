#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {struct TYPE_9__* K1; struct TYPE_9__* K2; struct TYPE_9__* iv; int /*<<< orphan*/  sched; } ;
typedef  TYPE_1__* TCCmacState_t ;
typedef  int /*<<< orphan*/  TCAesKeySched_t ;

/* Variables and functions */
 int TC_AES_BLOCK_SIZE ; 
 int TC_CRYPTO_FAIL ; 
 int TC_CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(TCCmacState_t s, const uint8_t *key, TCAesKeySched_t sched)
{

    /* input sanity check: */
    if (s == (TCCmacState_t) 0 ||
            key == (const uint8_t *) 0) {
        return TC_CRYPTO_FAIL;
    }

    /* put s into a known state */
    FUNC0(s, 0, sizeof(*s));
    s->sched = sched;

    /* configure the encryption key used by the underlying block cipher */
    FUNC2(s->sched, key);

    /* compute s->K1 and s->K2 from s->iv using s->keyid */
    FUNC0(s->iv, 0, TC_AES_BLOCK_SIZE);
    FUNC3(s->iv, s->iv, s->sched);
    FUNC1 (s->K1, s->iv);
    FUNC1 (s->K2, s->K1);

    /* reset s->iv to 0 in case someone wants to compute now */
    FUNC4(s);

    return TC_CRYPTO_SUCCESS;
}