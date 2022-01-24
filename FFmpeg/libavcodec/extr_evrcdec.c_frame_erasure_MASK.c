#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ bitrate; double* lspf; double* prev_lspf; double avg_acb_gain; double* pitch; scalar_t__ last_valid_bitrate; size_t prev_energy_gain; float* energy_vector; double fade_scale; double avg_fcb_gain; int /*<<< orphan*/  synthesis; scalar_t__ prev_pitch_delay; scalar_t__ pitch_delay; int /*<<< orphan*/  pitch_back; scalar_t__ prev_error_flag; } ;
typedef  TYPE_1__ EVRCContext ;

/* Variables and functions */
 int ACB_SIZE ; 
 double FUNC0 (double,double) ; 
 int FILTER_ORDER ; 
 float MIN_DELAY ; 
 int NB_SUBFRAMES ; 
 scalar_t__ RATE_FULL ; 
 scalar_t__ RATE_HALF ; 
 scalar_t__ RATE_QUANT ; 
 int /*<<< orphan*/  SUBFRAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,double*,double,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*) ; 
 float* estimation_delay ; 
 scalar_t__** evrc_energy_quant ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (float*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (float*,double*,double*,int) ; 
 int FUNC6 (float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,double*,int) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,float*,float*,float*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * postfilter_coeffs ; 
 float FUNC10 (int,float) ; 
 int* subframe_sizes ; 
 int /*<<< orphan*/  FUNC11 (float*,float*,int /*<<< orphan*/ ,int,float*) ; 

__attribute__((used)) static void FUNC12(EVRCContext *e, float *samples)
{
    float ilspf[FILTER_ORDER], ilpc[FILTER_ORDER], idelay[NB_SUBFRAMES],
          tmp[SUBFRAME_SIZE + 6], f;
    int i, j;

    for (i = 0; i < FILTER_ORDER; i++) {
        if (e->bitrate != RATE_QUANT)
            e->lspf[i] = e->prev_lspf[i] * 0.875 + 0.125 * (i + 1) * 0.048;
        else
            e->lspf[i] = e->prev_lspf[i];
    }

    if (e->prev_error_flag)
        e->avg_acb_gain *= 0.75;
    if (e->bitrate == RATE_FULL)
        FUNC7(e->pitch_back, e->pitch, ACB_SIZE * sizeof(float));
    if (e->last_valid_bitrate == RATE_QUANT)
        e->bitrate = RATE_QUANT;
    else
        e->bitrate = RATE_FULL;

    if (e->bitrate == RATE_FULL || e->bitrate == RATE_HALF) {
        e->pitch_delay = e->prev_pitch_delay;
    } else {
        float sum = 0;

        idelay[0] = idelay[1] = idelay[2] = MIN_DELAY;

        for (i = 0; i < NB_SUBFRAMES; i++)
            sum += evrc_energy_quant[e->prev_energy_gain][i];
        sum /= (float) NB_SUBFRAMES;
        sum  = FUNC10(10, sum);
        for (i = 0; i < NB_SUBFRAMES; i++)
            e->energy_vector[i] = sum;
    }

    if (FUNC3(e->pitch_delay - e->prev_pitch_delay) > 15)
        e->prev_pitch_delay = e->pitch_delay;

    for (i = 0; i < NB_SUBFRAMES; i++) {
        int subframe_size = subframe_sizes[i];
        int pitch_lag;

        FUNC5(ilspf, e->lspf, e->prev_lspf, i);

        if (e->bitrate != RATE_QUANT) {
            if (e->avg_acb_gain < 0.3) {
                idelay[0] = estimation_delay[i];
                idelay[1] = estimation_delay[i + 1];
                idelay[2] = estimation_delay[i + 2];
            } else {
                FUNC4(idelay, e->pitch_delay, e->prev_pitch_delay, i);
            }
        }

        pitch_lag = FUNC6((idelay[1] + idelay[0]) / 2.0);
        FUNC2(ilspf, ilpc);

        if (e->bitrate != RATE_QUANT) {
            FUNC1(e, e->pitch + ACB_SIZE,
                           e->avg_acb_gain, idelay, subframe_size);
            for (j = 0; j < subframe_size; j++)
                e->pitch[ACB_SIZE + j] *= e->fade_scale;
            e->fade_scale = FUNC0(e->fade_scale - 0.05, 0.0);
        } else {
            for (j = 0; j < subframe_size; j++)
                e->pitch[ACB_SIZE + j] = e->energy_vector[i];
        }

        FUNC8(e->pitch, e->pitch + subframe_size, ACB_SIZE * sizeof(float));

        if (e->bitrate != RATE_QUANT && e->avg_acb_gain < 0.4) {
            f = 0.1 * e->avg_fcb_gain;
            for (j = 0; j < subframe_size; j++)
                e->pitch[ACB_SIZE + j] += f;
        } else if (e->bitrate == RATE_QUANT) {
            for (j = 0; j < subframe_size; j++)
                e->pitch[ACB_SIZE + j] = e->energy_vector[i];
        }

        FUNC11(e->pitch + ACB_SIZE, ilpc,
                         e->synthesis, subframe_size, tmp);
        FUNC9(e, tmp, ilpc, samples, pitch_lag,
                   &postfilter_coeffs[e->bitrate], subframe_size);

        samples += subframe_size;
    }
}