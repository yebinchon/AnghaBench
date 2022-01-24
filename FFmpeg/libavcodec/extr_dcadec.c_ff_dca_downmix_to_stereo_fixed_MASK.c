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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* dmix_add ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ;int /*<<< orphan*/  (* dmix_scale ) (int /*<<< orphan*/ *,int,int) ;} ;
typedef  TYPE_1__ DCADSPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t DCA_SPEAKER_L ; 
 int DCA_SPEAKER_MASK_C ; 
 size_t DCA_SPEAKER_R ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

void FUNC8(DCADSPContext *dcadsp, int32_t **samples,
                                    int *coeff_l, int nsamples, int ch_mask)
{
    int pos, spkr, max_spkr = FUNC2(ch_mask);
    int *coeff_r = coeff_l + FUNC3(ch_mask);

    FUNC1(FUNC0(ch_mask));

    // Scale left and right channels
    pos = (ch_mask & DCA_SPEAKER_MASK_C);
    dcadsp->dmix_scale(samples[DCA_SPEAKER_L], coeff_l[pos    ], nsamples);
    dcadsp->dmix_scale(samples[DCA_SPEAKER_R], coeff_r[pos + 1], nsamples);

    // Downmix remaining channels
    for (spkr = 0; spkr <= max_spkr; spkr++) {
        if (!(ch_mask & (1U << spkr)))
            continue;

        if (*coeff_l && spkr != DCA_SPEAKER_L)
            dcadsp->dmix_add(samples[DCA_SPEAKER_L], samples[spkr],
                             *coeff_l, nsamples);

        if (*coeff_r && spkr != DCA_SPEAKER_R)
            dcadsp->dmix_add(samples[DCA_SPEAKER_R], samples[spkr],
                             *coeff_r, nsamples);

        coeff_l++;
        coeff_r++;
    }
}