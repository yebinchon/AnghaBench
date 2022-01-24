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
typedef  int int32_t ;
struct TYPE_3__ {int max_exp; int ordata; int /*<<< orphan*/  shifted_both; int /*<<< orphan*/  shifted_ones; int /*<<< orphan*/  shifted_zeros; int /*<<< orphan*/  neg_zeros; int /*<<< orphan*/  false_zeros; int /*<<< orphan*/  float_flags; } ;
typedef  TYPE_1__ WavPackEncodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  FLOAT_EXCEPTIONS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(WavPackEncodeContext *s, int32_t *sample)
{
    int32_t shift_count, value, f = *sample;

    if (FUNC0(f) == 255) {
        s->float_flags |= FLOAT_EXCEPTIONS;
        value = 0x1000000;
        shift_count = 0;
    } else if (FUNC0(f)) {
        shift_count = s->max_exp - FUNC0(f);
        value = 0x800000 + FUNC1(f);
    } else {
        shift_count = s->max_exp ? s->max_exp - 1 : 0;
        value = FUNC1(f);
    }

    if (shift_count < 25)
        value >>= shift_count;
    else
        value = 0;

    if (!value) {
        if (FUNC0(f) || FUNC1(f))
            s->false_zeros++;
        else if (FUNC2(f))
            s->neg_zeros++;
    } else if (shift_count) {
        int32_t mask = (1 << shift_count) - 1;

        if (!(FUNC1(f) & mask))
            s->shifted_zeros++;
        else if ((FUNC1(f) & mask) == mask)
            s->shifted_ones++;
        else
            s->shifted_both++;
    }

    s->ordata |= value;
    *sample = FUNC2(f) ? -value : value;
}