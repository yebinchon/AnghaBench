#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_7__ {int bs_freq_scale; int bs_alter_scale; int bs_noise_bands; void* bs_xover_band; void* bs_stop_freq; void* bs_start_freq; } ;
struct TYPE_6__ {int bs_limiter_bands; int start; int reset; int bs_limiter_gains; int bs_interpol_freq; int bs_smoothing_mode; TYPE_4__ spectrum_params; void* bs_amp_res_header; scalar_t__ ready_for_dequant; } ;
typedef  int /*<<< orphan*/  SpectrumParameters ;
typedef  TYPE_1__ SpectralBandReplication ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static unsigned int FUNC7(SpectralBandReplication *sbr, GetBitContext *gb)
{
    unsigned int cnt = FUNC2(gb);
    uint8_t bs_header_extra_1;
    uint8_t bs_header_extra_2;
    int old_bs_limiter_bands = sbr->bs_limiter_bands;
    SpectrumParameters old_spectrum_params;

    sbr->start = 1;
    sbr->ready_for_dequant = 0;

    // Save last spectrum parameters variables to compare to new ones
    FUNC4(&old_spectrum_params, &sbr->spectrum_params, sizeof(SpectrumParameters));

    sbr->bs_amp_res_header              = FUNC1(gb);
    sbr->spectrum_params.bs_start_freq  = FUNC0(gb, 4);
    sbr->spectrum_params.bs_stop_freq   = FUNC0(gb, 4);
    sbr->spectrum_params.bs_xover_band  = FUNC0(gb, 3);
                                          FUNC6(gb, 2); // bs_reserved

    bs_header_extra_1 = FUNC1(gb);
    bs_header_extra_2 = FUNC1(gb);

    if (bs_header_extra_1) {
        sbr->spectrum_params.bs_freq_scale  = FUNC0(gb, 2);
        sbr->spectrum_params.bs_alter_scale = FUNC1(gb);
        sbr->spectrum_params.bs_noise_bands = FUNC0(gb, 2);
    } else {
        sbr->spectrum_params.bs_freq_scale  = 2;
        sbr->spectrum_params.bs_alter_scale = 1;
        sbr->spectrum_params.bs_noise_bands = 2;
    }

    // Check if spectrum parameters changed
    if (FUNC3(&old_spectrum_params, &sbr->spectrum_params, sizeof(SpectrumParameters)))
        sbr->reset = 1;

    if (bs_header_extra_2) {
        sbr->bs_limiter_bands  = FUNC0(gb, 2);
        sbr->bs_limiter_gains  = FUNC0(gb, 2);
        sbr->bs_interpol_freq  = FUNC1(gb);
        sbr->bs_smoothing_mode = FUNC1(gb);
    } else {
        sbr->bs_limiter_bands  = 2;
        sbr->bs_limiter_gains  = 2;
        sbr->bs_interpol_freq  = 1;
        sbr->bs_smoothing_mode = 1;
    }

    if (sbr->bs_limiter_bands != old_bs_limiter_bands && !sbr->reset)
        FUNC5(sbr);

    return FUNC2(gb) - cnt;
}