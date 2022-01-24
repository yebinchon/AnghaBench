#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float** prev_energy; float* energy; int* collapse_masks; } ;
struct TYPE_6__ {int start_band; int end_band; int* pulses; int size; int channels; TYPE_2__* block; } ;
typedef  TYPE_1__ CeltFrame ;
typedef  TYPE_2__ CeltBlock ;

/* Variables and functions */
 float FUNC0 (float,float) ; 
 float FUNC1 (float,float) ; 
 float M_SQRT2 ; 
 int /*<<< orphan*/  FUNC2 (float*,int,float) ; 
 int FUNC3 (TYPE_1__*) ; 
 float FUNC4 (int) ; 
 int* ff_celt_freq_bands ; 
 int* ff_celt_freq_range ; 
 float FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(CeltFrame *f, CeltBlock *block, float *X)
{
    int i, j, k;

    for (i = f->start_band; i < f->end_band; i++) {
        int renormalize = 0;
        float *xptr;
        float prev[2];
        float Ediff, r;
        float thresh, sqrt_1;
        int depth;

        /* depth in 1/8 bits */
        depth = (1 + f->pulses[i]) / (ff_celt_freq_range[i] << f->size);
        thresh = FUNC4(-1.0 - 0.125f * depth);
        sqrt_1 = 1.0f / FUNC5(ff_celt_freq_range[i] << f->size);

        xptr = X + (ff_celt_freq_bands[i] << f->size);

        prev[0] = block->prev_energy[0][i];
        prev[1] = block->prev_energy[1][i];
        if (f->channels == 1) {
            CeltBlock *block1 = &f->block[1];

            prev[0] = FUNC0(prev[0], block1->prev_energy[0][i]);
            prev[1] = FUNC0(prev[1], block1->prev_energy[1][i]);
        }
        Ediff = block->energy[i] - FUNC1(prev[0], prev[1]);
        Ediff = FUNC0(0, Ediff);

        /* r needs to be multiplied by 2 or 2*sqrt(2) depending on LM because
        short blocks don't have the same energy as long */
        r = FUNC4(1 - Ediff);
        if (f->size == 3)
            r *= M_SQRT2;
        r = FUNC1(thresh, r) * sqrt_1;
        for (k = 0; k < 1 << f->size; k++) {
            /* Detect collapse */
            if (!(block->collapse_masks[i] & 1 << k)) {
                /* Fill with noise */
                for (j = 0; j < ff_celt_freq_range[i]; j++)
                    xptr[(j << f->size) + k] = (FUNC3(f) & 0x8000) ? r : -r;
                renormalize = 1;
            }
        }

        /* We just added some energy, so we need to renormalize */
        if (renormalize)
            FUNC2(xptr, ff_celt_freq_range[i] << f->size, 1.0f);
    }
}