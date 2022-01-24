#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_3__ {scalar_t__ words; } ;
typedef  TYPE_1__* const TCAesKeySched_t ;

/* Variables and functions */
 int Nb ; 
 int Nk ; 
 int Nr ; 
 int TC_CRYPTO_FAIL ; 
 int TC_CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  TC_ZERO_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

int FUNC6(uint8_t *out, const uint8_t *in, const TCAesKeySched_t s)
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

    (void)FUNC0(state, sizeof(state), in, sizeof(state));
    FUNC2(state, s->words);

    for (i = 0; i < (Nr - 1); ++i) {
        FUNC5(state);
        FUNC4(state);
        FUNC3(state);
        FUNC2(state, s->words + Nb * (i + 1));
    }

    FUNC5(state);
    FUNC4(state);
    FUNC2(state, s->words + Nb * (i + 1));

    (void)FUNC0(out, sizeof(state), state, sizeof(state));

    /* zeroing out the state buffer */
    FUNC1(state, TC_ZERO_BYTE, sizeof(state));

    return TC_CRYPTO_SUCCESS;
}