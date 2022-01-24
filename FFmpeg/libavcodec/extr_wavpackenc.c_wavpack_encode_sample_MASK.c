#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  WvChannel ;
struct TYPE_7__ {int holding_zero; int zeros_acc; int holding_one; int pend_data; int pend_count; TYPE_1__* c; } ;
typedef  TYPE_2__ WavPackWords ;
struct TYPE_8__ {TYPE_2__ w; int /*<<< orphan*/  pb; } ;
typedef  TYPE_3__ WavPackEncodeContext ;
struct TYPE_6__ {int* median; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(WavPackEncodeContext *s, WvChannel *c, int32_t sample)
{
    WavPackWords *w = &s->w;
    uint32_t ones_count, low, high;
    int sign = sample < 0;

    if (s->w.c[0].median[0] < 2 && !s->w.holding_zero && s->w.c[1].median[0] < 2) {
        if (w->zeros_acc) {
            if (sample)
                FUNC5(s);
            else {
                w->zeros_acc++;
                return;
            }
        } else if (sample) {
            FUNC6(&s->pb, 1, 0);
        } else {
            FUNC0(s->w.c[0].median);
            FUNC0(s->w.c[1].median);
            w->zeros_acc = 1;
            return;
        }
    }

    if (sign)
        sample = ~sample;

    if (sample < (int32_t) FUNC2(0)) {
        ones_count = low = 0;
        high = FUNC2(0) - 1;
        FUNC1(0);
    } else {
        low = FUNC2(0);
        FUNC3(0);

        if (sample - low < FUNC2(1)) {
            ones_count = 1;
            high = low + FUNC2(1) - 1;
            FUNC1(1);
        } else {
            low += FUNC2(1);
            FUNC3(1);

            if (sample - low < FUNC2(2)) {
                ones_count = 2;
                high = low + FUNC2(2) - 1;
                FUNC1(2);
            } else {
                ones_count = 2 + (sample - low) / FUNC2(2);
                low += (ones_count - 2) * FUNC2(2);
                high = low + FUNC2(2) - 1;
                FUNC3(2);
            }
        }
    }

    if (w->holding_zero) {
        if (ones_count)
            w->holding_one++;

        FUNC5(s);

        if (ones_count) {
            w->holding_zero = 1;
            ones_count--;
        } else
            w->holding_zero = 0;
    } else
        w->holding_zero = 1;

    w->holding_one = ones_count * 2;

    if (high != low) {
        uint32_t maxcode = high - low, code = sample - low;
        int bitcount = FUNC4(maxcode);
        uint32_t extras = (1 << bitcount) - maxcode - 1;

        if (code < extras) {
            w->pend_data |= code << w->pend_count;
            w->pend_count += bitcount - 1;
        } else {
            w->pend_data |= ((code + extras) >> 1) << w->pend_count;
            w->pend_count += bitcount - 1;
            w->pend_data |= ((code + extras) & 1) << w->pend_count++;
        }
    }

    w->pend_data |= ((int32_t) sign << w->pend_count++);

    if (!w->holding_zero)
        FUNC5(s);
}