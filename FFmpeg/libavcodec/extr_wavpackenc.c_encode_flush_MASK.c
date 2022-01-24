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
struct TYPE_4__ {int zeros_acc; int holding_one; int pend_count; int pend_data; scalar_t__ holding_zero; } ;
typedef  TYPE_1__ WavPackWords ;
struct TYPE_5__ {int /*<<< orphan*/  pb; TYPE_1__ w; } ;
typedef  TYPE_2__ WavPackEncodeContext ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC2(WavPackEncodeContext *s)
{
    WavPackWords *w = &s->w;
    PutBitContext *pb = &s->pb;

    if (w->zeros_acc) {
        int cbits = FUNC0(w->zeros_acc);

        do {
            if (cbits > 31) {
                FUNC1(pb, 31, 0x7FFFFFFF);
                cbits -= 31;
            } else {
                FUNC1(pb, cbits, (1 << cbits) - 1);
                cbits = 0;
            }
        } while (cbits);

        FUNC1(pb, 1, 0);

        while (w->zeros_acc > 1) {
            FUNC1(pb, 1, w->zeros_acc & 1);
            w->zeros_acc >>= 1;
        }

        w->zeros_acc = 0;
    }

    if (w->holding_one) {
        if (w->holding_one >= 16) {
            int cbits;

            FUNC1(pb, 16, (1 << 16) - 1);
            FUNC1(pb, 1, 0);
            w->holding_one -= 16;
            cbits = FUNC0(w->holding_one);

            do {
                if (cbits > 31) {
                    FUNC1(pb, 31, 0x7FFFFFFF);
                    cbits -= 31;
                } else {
                    FUNC1(pb, cbits, (1 << cbits) - 1);
                    cbits = 0;
                }
            } while (cbits);

            FUNC1(pb, 1, 0);

            while (w->holding_one > 1) {
                FUNC1(pb, 1, w->holding_one & 1);
                w->holding_one >>= 1;
            }

            w->holding_zero = 0;
        } else {
            FUNC1(pb, w->holding_one, (1 << w->holding_one) - 1);
        }

        w->holding_one = 0;
    }

    if (w->holding_zero) {
        FUNC1(pb, 1, 0);
        w->holding_zero = 0;
    }

    if (w->pend_count) {
        FUNC1(pb, w->pend_count, w->pend_data);
        w->pend_data = w->pend_count = 0;
    }
}