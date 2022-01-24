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
struct TYPE_5__ {int* transient; int* transient_pos; int samples_per_frame; int bits_per_sample; unsigned int* ave_sum; int movave_scaling; int** channel_residues; int /*<<< orphan*/  gb; scalar_t__ do_inter_ch_decorr; scalar_t__ seekable_tile; TYPE_1__* channel; } ;
typedef  TYPE_2__ WmallDecodeCtx ;
struct TYPE_4__ {scalar_t__ transient_counter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(WmallDecodeCtx *s, int ch, int tile_size)
{
    int i = 0;
    unsigned int ave_mean;
    s->transient[ch] = FUNC4(&s->gb);
    if (s->transient[ch]) {
        s->transient_pos[ch] = FUNC3(&s->gb, FUNC2(tile_size));
        if (s->transient_pos[ch])
            s->transient[ch] = 0;
        s->channel[ch].transient_counter =
            FUNC0(s->channel[ch].transient_counter, s->samples_per_frame / 2);
    } else if (s->channel[ch].transient_counter)
        s->transient[ch] = 1;

    if (s->seekable_tile) {
        ave_mean = FUNC3(&s->gb, s->bits_per_sample);
        s->ave_sum[ch] = ave_mean << (s->movave_scaling + 1);
    }

    if (s->seekable_tile) {
        if (s->do_inter_ch_decorr)
            s->channel_residues[ch][0] = FUNC7(&s->gb, s->bits_per_sample + 1);
        else
            s->channel_residues[ch][0] = FUNC7(&s->gb, s->bits_per_sample);
        i++;
    }
    for (; i < tile_size; i++) {
        int quo = 0, rem, rem_bits, residue;
        while(FUNC4(&s->gb)) {
            quo++;
            if (FUNC5(&s->gb) <= 0)
                return -1;
        }
        if (quo >= 32)
            quo += FUNC6(&s->gb, FUNC3(&s->gb, 5) + 1);

        ave_mean = (s->ave_sum[ch] + (1 << s->movave_scaling)) >> (s->movave_scaling + 1);
        if (ave_mean <= 1)
            residue = quo;
        else {
            rem_bits = FUNC1(ave_mean);
            rem      = FUNC6(&s->gb, rem_bits);
            residue  = (quo << rem_bits) + rem;
        }

        s->ave_sum[ch] = residue + s->ave_sum[ch] -
                         (s->ave_sum[ch] >> s->movave_scaling);

        residue = (residue >> 1) ^ -(residue & 1);
        s->channel_residues[ch][i] = residue;
    }

    return 0;

}