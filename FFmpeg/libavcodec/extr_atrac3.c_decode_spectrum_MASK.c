#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int SAMPLES_PER_FRAME ; 
 float* ff_atrac_sf_table ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 float* inv_max_quant ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int*,int) ; 
 int* subband_tab ; 

__attribute__((used)) static int FUNC4(GetBitContext *gb, float *output)
{
    int num_subbands, coding_mode, i, j, first, last, subband_size;
    int subband_vlc_index[32], sf_index[32];
    int mantissas[128];
    float scale_factor;

    num_subbands = FUNC0(gb, 5);  // number of coded subbands
    coding_mode  = FUNC1(gb);    // coding Mode: 0 - VLC/ 1-CLC

    /* get the VLC selector table for the subbands, 0 means not coded */
    for (i = 0; i <= num_subbands; i++)
        subband_vlc_index[i] = FUNC0(gb, 3);

    /* read the scale factor indexes from the stream */
    for (i = 0; i <= num_subbands; i++) {
        if (subband_vlc_index[i] != 0)
            sf_index[i] = FUNC0(gb, 6);
    }

    for (i = 0; i <= num_subbands; i++) {
        first = subband_tab[i    ];
        last  = subband_tab[i + 1];

        subband_size = last - first;

        if (subband_vlc_index[i] != 0) {
            /* decode spectral coefficients for this subband */
            /* TODO: This can be done faster is several blocks share the
             * same VLC selector (subband_vlc_index) */
            FUNC3(gb, subband_vlc_index[i], coding_mode,
                                       mantissas, subband_size);

            /* decode the scale factor for this subband */
            scale_factor = ff_atrac_sf_table[sf_index[i]] *
                           inv_max_quant[subband_vlc_index[i]];

            /* inverse quantize the coefficients */
            for (j = 0; first < last; first++, j++)
                output[first] = mantissas[j] * scale_factor;
        } else {
            /* this subband was not coded, so zero the entire subband */
            FUNC2(output + first, 0, subband_size * sizeof(*output));
        }
    }

    /* clear the subbands that were not coded */
    first = subband_tab[i];
    FUNC2(output + first, 0, (SAMPLES_PER_FRAME - first) * sizeof(*output));
    return num_subbands;
}