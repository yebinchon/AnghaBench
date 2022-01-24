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
struct TYPE_3__ {int fullband_channels; int* channel_order_tab; int*** subband; int channels; int /*<<< orphan*/ * band_interpolation; int /*<<< orphan*/ ** history; } ;
typedef  TYPE_1__ DCAEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SUBBAND_SAMPLES ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(DCAEncContext *c, const int32_t *input)
{
    int ch, subs, i, k, j;

    for (ch = 0; ch < c->fullband_channels; ch++) {
        /* History is copied because it is also needed for PSY */
        int32_t hist[512];
        int hist_start = 0;
        const int chi = c->channel_order_tab[ch];

        FUNC1(hist, &c->history[ch][0], 512 * sizeof(int32_t));

        for (subs = 0; subs < SUBBAND_SAMPLES; subs++) {
            int32_t accum[64];
            int32_t resp;
            int band;

            /* Calculate the convolutions at once */
            FUNC2(accum, 0, 64 * sizeof(int32_t));

            for (k = 0, i = hist_start, j = 0;
                    i < 512; k = (k + 1) & 63, i++, j++)
                accum[k] += FUNC3(hist[i], c->band_interpolation[j]);
            for (i = 0; i < hist_start; k = (k + 1) & 63, i++, j++)
                accum[k] += FUNC3(hist[i], c->band_interpolation[j]);

            for (k = 16; k < 32; k++)
                accum[k] = accum[k] - accum[31 - k];
            for (k = 32; k < 48; k++)
                accum[k] = accum[k] + accum[95 - k];

            for (band = 0; band < 32; band++) {
                resp = 0;
                for (i = 16; i < 48; i++) {
                    int s = (2 * band + 1) * (2 * (i + 16) + 1);
                    resp += FUNC3(accum[i], FUNC0(s << 3)) >> 3;
                }

                c->subband[ch][band][subs] = ((band + 1) & 2) ? -resp : resp;
            }

            /* Copy in 32 new samples from input */
            for (i = 0; i < 32; i++)
                hist[i + hist_start] = input[(subs * 32 + i) * c->channels + chi];

            hist_start = (hist_start + 32) & 511;
        }
    }
}