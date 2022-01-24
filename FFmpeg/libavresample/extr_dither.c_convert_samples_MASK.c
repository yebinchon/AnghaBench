#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_9__ {scalar_t__ method; int samples_align; int /*<<< orphan*/  (* quantize ) (int /*<<< orphan*/ *,float* const,int /*<<< orphan*/ *,int) ;TYPE_1__* state; } ;
struct TYPE_8__ {int noise_buf_size; int noise_buf_ptr; int /*<<< orphan*/ * noise_buf; } ;
typedef  TYPE_1__ DitherState ;
typedef  TYPE_2__ DitherContext ;

/* Variables and functions */
 scalar_t__ AV_RESAMPLE_DITHER_TRIANGULAR_NS ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,float* const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float* const,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(DitherContext *c, int16_t **dst, float * const *src,
                           int channels, int nb_samples)
{
    int ch, ret;
    int aligned_samples = FUNC0(nb_samples, 16);

    for (ch = 0; ch < channels; ch++) {
        DitherState *state = &c->state[ch];

        if (state->noise_buf_size < aligned_samples) {
            ret = FUNC1(c, state, nb_samples);
            if (ret < 0)
                return ret;
        } else if (state->noise_buf_size - state->noise_buf_ptr < aligned_samples) {
            state->noise_buf_ptr = 0;
        }

        if (c->method == AV_RESAMPLE_DITHER_TRIANGULAR_NS) {
            FUNC2(c, state, dst[ch], src[ch], nb_samples);
        } else {
            c->quantize(dst[ch], src[ch],
                        &state->noise_buf[state->noise_buf_ptr],
                        FUNC0(nb_samples, c->samples_align));
        }

        state->noise_buf_ptr += aligned_samples;
    }

    return 0;
}