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
struct TYPE_3__ {int /*<<< orphan*/  (* vector_fmac_scalar ) (float*,float*,int,int) ;int /*<<< orphan*/  (* vector_fmul_scalar ) (float*,float*,int,int) ;} ;
typedef  TYPE_1__ AVFloatDSPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t DCA_SPEAKER_L ; 
 int DCA_SPEAKER_MASK_C ; 
 size_t DCA_SPEAKER_R ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,int,int) ; 

void FUNC8(AVFloatDSPContext *fdsp, float **samples,
                                    int *coeff_l, int nsamples, int ch_mask)
{
    int pos, spkr, max_spkr = FUNC2(ch_mask);
    int *coeff_r = coeff_l + FUNC3(ch_mask);
    const float scale = 1.0f / (1 << 15);

    FUNC1(FUNC0(ch_mask));

    // Scale left and right channels
    pos = (ch_mask & DCA_SPEAKER_MASK_C);
    fdsp->vector_fmul_scalar(samples[DCA_SPEAKER_L], samples[DCA_SPEAKER_L],
                             coeff_l[pos    ] * scale, nsamples);
    fdsp->vector_fmul_scalar(samples[DCA_SPEAKER_R], samples[DCA_SPEAKER_R],
                             coeff_r[pos + 1] * scale, nsamples);

    // Downmix remaining channels
    for (spkr = 0; spkr <= max_spkr; spkr++) {
        if (!(ch_mask & (1U << spkr)))
            continue;

        if (*coeff_l && spkr != DCA_SPEAKER_L)
            fdsp->vector_fmac_scalar(samples[DCA_SPEAKER_L], samples[spkr],
                                     *coeff_l * scale, nsamples);

        if (*coeff_r && spkr != DCA_SPEAKER_R)
            fdsp->vector_fmac_scalar(samples[DCA_SPEAKER_R], samples[spkr],
                                     *coeff_r * scale, nsamples);

        coeff_l++;
        coeff_r++;
    }
}