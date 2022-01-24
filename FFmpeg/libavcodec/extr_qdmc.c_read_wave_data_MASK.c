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
struct TYPE_4__ {int frame_bits; int frame_size; int nb_channels; int subframe_size; } ;
typedef  TYPE_1__ QDMCContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * vtable ; 

__attribute__((used)) static int FUNC3(QDMCContext *s, GetBitContext *gb)
{
    int amp, phase, stereo_mode = 0, i, group, freq, group_size, group_bits;
    int amp2, phase2, pos2, off;

    for (group = 0; group < 5; group++) {
        group_size = 1 << (s->frame_bits - group - 1);
        group_bits = 4 - group;
        pos2 = 0;
        off  = 0;

        for (i = 1; ; i = freq + 1) {
            int v;

            v = FUNC2(gb, &vtable[3], 1);
            if (v < 0)
                return AVERROR_INVALIDDATA;

            freq = i + v;
            while (freq >= group_size - 1) {
                freq += 2 - group_size;
                pos2 += group_size;
                off  += 1 << group_bits;
            }

            if (pos2 >= s->frame_size)
                break;

            if (s->nb_channels > 1)
                stereo_mode = FUNC1(gb, 2);

            amp   = FUNC2(gb, &vtable[2], 0);
            if (amp < 0)
                return AVERROR_INVALIDDATA;
            phase = FUNC1(gb, 3);

            if (stereo_mode > 1) {
                amp2   = FUNC2(gb, &vtable[4], 0);
                if (amp2 < 0)
                    return AVERROR_INVALIDDATA;
                amp2   = amp - amp2;

                phase2 = FUNC2(gb, &vtable[5], 0);
                if (phase2 < 0)
                    return AVERROR_INVALIDDATA;
                phase2 = phase - phase2;

                if (phase2 < 0)
                    phase2 += 8;
            }

            if ((freq >> group_bits) + 1 < s->subframe_size) {
                FUNC0(s, group, off, freq, stereo_mode & 1, amp, phase);
                if (stereo_mode > 1)
                    FUNC0(s, group, off, freq, ~stereo_mode & 1, amp2, phase2);
            }
        }
    }

    return 0;
}