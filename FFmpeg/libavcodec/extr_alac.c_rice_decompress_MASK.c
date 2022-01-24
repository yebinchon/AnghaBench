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
typedef  unsigned int int32_t ;
struct TYPE_3__ {unsigned int rice_initial_history; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/  rice_limit; } ;
typedef  TYPE_1__ ALACContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC2 (unsigned int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(ALACContext *alac, int32_t *output_buffer,
                            int nb_samples, int bps, int rice_history_mult)
{
    int i;
    unsigned int history = alac->rice_initial_history;
    int sign_modifier = 0;

    for (i = 0; i < nb_samples; i++) {
        int k;
        unsigned int x;

        if(FUNC4(&alac->gb) <= 0)
            return AVERROR_INVALIDDATA;

        /* calculate rice param and decode next value */
        k = FUNC2((history >> 9) + 3);
        k = FUNC0(k, alac->rice_limit);
        x = FUNC3(&alac->gb, k, bps);
        x += sign_modifier;
        sign_modifier = 0;
        output_buffer[i] = (x >> 1) ^ -(x & 1);

        /* update the history */
        if (x > 0xffff)
            history = 0xffff;
        else
            history +=         x * rice_history_mult -
                       ((history * rice_history_mult) >> 9);

        /* special case: there may be compressed blocks of 0 */
        if ((history < 128) && (i + 1 < nb_samples)) {
            int block_size;

            /* calculate rice param and decode block size */
            k = 7 - FUNC2(history) + ((history + 16) >> 6);
            k = FUNC0(k, alac->rice_limit);
            block_size = FUNC3(&alac->gb, k, 16);

            if (block_size > 0) {
                if (block_size >= nb_samples - i) {
                    FUNC1(alac->avctx, AV_LOG_ERROR,
                           "invalid zero block size of %d %d %d\n", block_size,
                           nb_samples, i);
                    block_size = nb_samples - i - 1;
                }
                FUNC5(&output_buffer[i + 1], 0,
                       block_size * sizeof(*output_buffer));
                i += block_size;
            }
            if (block_size <= 0xffff)
                sign_modifier = 1;
            history = 0;
        }
    }
    return 0;
}