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
struct TYPE_3__ {int pos; int num_coefs; int* coef; } ;
typedef  TYPE_1__ TonalComponent ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int,int) ; 
 int SAMPLES_PER_FRAME ; 
 float* ff_atrac_sf_table ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 float* inv_max_quant ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int*,int) ; 

__attribute__((used)) static int FUNC4(GetBitContext *gb,
                                   TonalComponent *components, int num_bands)
{
    int i, b, c, m;
    int nb_components, coding_mode_selector, coding_mode;
    int band_flags[4], mantissa[8];
    int component_count = 0;

    nb_components = FUNC1(gb, 5);

    /* no tonal components */
    if (nb_components == 0)
        return 0;

    coding_mode_selector = FUNC1(gb, 2);
    if (coding_mode_selector == 2)
        return AVERROR_INVALIDDATA;

    coding_mode = coding_mode_selector & 1;

    for (i = 0; i < nb_components; i++) {
        int coded_values_per_component, quant_step_index;

        for (b = 0; b <= num_bands; b++)
            band_flags[b] = FUNC2(gb);

        coded_values_per_component = FUNC1(gb, 3);

        quant_step_index = FUNC1(gb, 3);
        if (quant_step_index <= 1)
            return AVERROR_INVALIDDATA;

        if (coding_mode_selector == 3)
            coding_mode = FUNC2(gb);

        for (b = 0; b < (num_bands + 1) * 4; b++) {
            int coded_components;

            if (band_flags[b >> 2] == 0)
                continue;

            coded_components = FUNC1(gb, 3);

            for (c = 0; c < coded_components; c++) {
                TonalComponent *cmp = &components[component_count];
                int sf_index, coded_values, max_coded_values;
                float scale_factor;

                sf_index = FUNC1(gb, 6);
                if (component_count >= 64)
                    return AVERROR_INVALIDDATA;

                cmp->pos = b * 64 + FUNC1(gb, 6);

                max_coded_values = SAMPLES_PER_FRAME - cmp->pos;
                coded_values     = coded_values_per_component + 1;
                coded_values     = FUNC0(max_coded_values, coded_values);

                scale_factor = ff_atrac_sf_table[sf_index] *
                               inv_max_quant[quant_step_index];

                FUNC3(gb, quant_step_index, coding_mode,
                                           mantissa, coded_values);

                cmp->num_coefs = coded_values;

                /* inverse quant */
                for (m = 0; m < coded_values; m++)
                    cmp->coef[m] = mantissa[m] * scale_factor;

                component_count++;
            }
        }
    }

    return component_count;
}