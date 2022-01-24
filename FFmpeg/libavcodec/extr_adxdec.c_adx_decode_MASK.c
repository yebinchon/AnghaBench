#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_5__ {int s1; int s2; } ;
struct TYPE_4__ {int* coeff; TYPE_2__* prev; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ ADXContext ;
typedef  TYPE_2__ ADXChannelState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int BLOCK_SAMPLES ; 
 int BLOCK_SIZE ; 
 int COEFF_BITS ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC4(ADXContext *c, int16_t *out, int offset,
                      const uint8_t *in, int ch)
{
    ADXChannelState *prev = &c->prev[ch];
    GetBitContext gb;
    int scale = FUNC0(in);
    int i;
    int s0, s1, s2, d;

    /* check if this is an EOF packet */
    if (scale & 0x8000)
        return -1;

    FUNC3(&gb, in + 2, (BLOCK_SIZE - 2) * 8);
    out += offset;
    s1 = prev->s1;
    s2 = prev->s2;
    for (i = 0; i < BLOCK_SAMPLES; i++) {
        d  = FUNC2(&gb, 4);
        s0 = ((d * (1 << COEFF_BITS)) * scale + c->coeff[0] * s1 + c->coeff[1] * s2) >> COEFF_BITS;
        s2 = s1;
        s1 = FUNC1(s0);
        *out++ = s1;
    }
    prev->s1 = s1;
    prev->s2 = s2;

    return 0;
}