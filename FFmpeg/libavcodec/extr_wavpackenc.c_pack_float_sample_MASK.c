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
struct TYPE_3__ {int float_max_exp; int float_flags; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ WavPackEncodeContext ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int FLOAT_NEG_ZEROS ; 
 int FLOAT_SHIFT_SAME ; 
 int FLOAT_SHIFT_SENT ; 
 int FLOAT_ZEROS_SENT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(WavPackEncodeContext *s, int32_t *sample)
{
    const int max_exp = s->float_max_exp;
    PutBitContext *pb = &s->pb;
    int32_t value, shift_count;

    if (FUNC0(*sample) == 255) {
        if (FUNC1(*sample)) {
            FUNC3(pb, 1, 1);
            FUNC3(pb, 23, FUNC1(*sample));
        } else {
            FUNC3(pb, 1, 0);
        }

        value = 0x1000000;
        shift_count = 0;
    } else if (FUNC0(*sample)) {
        shift_count = max_exp - FUNC0(*sample);
        value = 0x800000 + FUNC1(*sample);
    } else {
        shift_count = max_exp ? max_exp - 1 : 0;
        value = FUNC1(*sample);
    }

    if (shift_count < 25)
        value >>= shift_count;
    else
        value = 0;

    if (!value) {
        if (s->float_flags & FLOAT_ZEROS_SENT) {
            if (FUNC0(*sample) || FUNC1(*sample)) {
                FUNC3(pb, 1, 1);
                FUNC3(pb, 23, FUNC1(*sample));

                if (max_exp >= 25)
                    FUNC3(pb, 8, FUNC0(*sample));

                FUNC3(pb, 1, FUNC2(*sample));
            } else {
                FUNC3(pb, 1, 0);

                if (s->float_flags & FLOAT_NEG_ZEROS)
                    FUNC3(pb, 1, FUNC2(*sample));
            }
        }
    } else if (shift_count) {
        if (s->float_flags & FLOAT_SHIFT_SENT) {
            FUNC4(pb, shift_count, FUNC1(*sample));
        } else if (s->float_flags & FLOAT_SHIFT_SAME) {
            FUNC3(pb, 1, FUNC1(*sample) & 1);
        }
    }
}