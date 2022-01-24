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
typedef  int uint8_t ;
struct TYPE_5__ {double* energy; } ;
struct TYPE_4__ {size_t size; scalar_t__ framebits; int channels; int start_band; int end_band; TYPE_2__* block; } ;
typedef  int /*<<< orphan*/  OpusRangeCoder ;
typedef  TYPE_1__ CeltFrame ;
typedef  TYPE_2__ CeltBlock ;

/* Variables and functions */
 int CELT_MAX_BANDS ; 
 float FUNC0 (float,float) ; 
 int FUNC1 (int,int) ; 
 float* ff_celt_alpha_coef ; 
 float* ff_celt_beta_coef ; 
 int*** ff_celt_coarse_energy_dist ; 
 int /*<<< orphan*/  ff_celt_model_energy_small ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ *,int const,int const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(CeltFrame *f, OpusRangeCoder *rc)
{
    int i, j;
    float prev[2] = { 0 };
    float alpha = ff_celt_alpha_coef[f->size];
    float beta  = ff_celt_beta_coef[f->size];
    const uint8_t *model = ff_celt_coarse_energy_dist[f->size][0];

    /* intra frame */
    if (FUNC5(rc) + 3 <= f->framebits && FUNC4(rc, 3)) {
        alpha = 0.0f;
        beta  = 1.0f - (4915.0f/32768.0f);
        model = ff_celt_coarse_energy_dist[f->size][1];
    }

    for (i = 0; i < CELT_MAX_BANDS; i++) {
        for (j = 0; j < f->channels; j++) {
            CeltBlock *block = &f->block[j];
            float value;
            int available;

            if (i < f->start_band || i >= f->end_band) {
                block->energy[i] = 0.0;
                continue;
            }

            available = f->framebits - FUNC5(rc);
            if (available >= 15) {
                /* decode using a Laplace distribution */
                int k = FUNC1(i, 20) << 1;
                value = FUNC3(rc, model[k] << 7, model[k+1] << 6);
            } else if (available >= 2) {
                int x = FUNC2(rc, ff_celt_model_energy_small);
                value = (x>>1) ^ -(x&1);
            } else if (available >= 1) {
                value = -(float)FUNC4(rc, 1);
            } else value = -1;

            block->energy[i] = FUNC0(-9.0f, block->energy[i]) * alpha + prev[j] + value;
            prev[j] += beta * value;
        }
    }
}