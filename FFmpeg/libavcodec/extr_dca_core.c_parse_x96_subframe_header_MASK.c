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
struct TYPE_5__ {int x96_nchannels; int x96_subband_start; int* nsubbands; int* bit_allocation_sel; int x96_high_res; int** bit_allocation; int* scale_factor_sel; int*** scale_factors; int* joint_intensity_index; int* joint_scale_sel; int** joint_scale_factors; int /*<<< orphan*/  gb; scalar_t__ crc_present; int /*<<< orphan*/  avctx; void*** prediction_vq_index; scalar_t__** prediction_mode; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ff_dca_vlc_quant_index ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(DCACoreDecoder *s, int xch_base)
{
    int ch, band, ret;

    if (FUNC4(&s->gb) < 0)
        return AVERROR_INVALIDDATA;

    // Prediction mode
    for (ch = xch_base; ch < s->x96_nchannels; ch++)
        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++)
            s->prediction_mode[ch][band] = FUNC3(&s->gb);

    // Prediction coefficients VQ address
    for (ch = xch_base; ch < s->x96_nchannels; ch++)
        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++)
            if (s->prediction_mode[ch][band])
                s->prediction_vq_index[ch][band] = FUNC2(&s->gb, 12);

    // Bit allocation index
    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        int sel = s->bit_allocation_sel[ch];
        int abits = 0;

        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++) {
            // If Huffman code was used, the difference of abits was encoded
            if (sel < 7)
                abits += FUNC1(&s->gb, &ff_dca_vlc_quant_index[5 + 2 * s->x96_high_res], sel);
            else
                abits = FUNC2(&s->gb, 3 + s->x96_high_res);

            if (abits < 0 || abits > 7 + 8 * s->x96_high_res) {
                FUNC0(s->avctx, AV_LOG_ERROR, "Invalid X96 bit allocation index\n");
                return AVERROR_INVALIDDATA;
            }

            s->bit_allocation[ch][band] = abits;
        }
    }

    // Scale factors
    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        int sel = s->scale_factor_sel[ch];
        int scale_index = 0;

        // Extract scales for subbands which are transmitted even for
        // unallocated subbands
        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++) {
            if ((ret = FUNC6(s, &scale_index, sel)) < 0)
                return ret;
            s->scale_factors[ch][band >> 1][band & 1] = ret;
        }
    }

    // Joint subband codebook select
    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        if (s->joint_intensity_index[ch]) {
            s->joint_scale_sel[ch] = FUNC2(&s->gb, 3);
            if (s->joint_scale_sel[ch] == 7) {
                FUNC0(s->avctx, AV_LOG_ERROR, "Invalid X96 joint scale factor code book\n");
                return AVERROR_INVALIDDATA;
            }
        }
    }

    // Scale factors for joint subband coding
    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        int src_ch = s->joint_intensity_index[ch] - 1;
        if (src_ch >= 0) {
            int sel = s->joint_scale_sel[ch];
            for (band = s->nsubbands[ch]; band < s->nsubbands[src_ch]; band++) {
                if ((ret = FUNC5(s, sel)) < 0)
                    return ret;
                s->joint_scale_factors[ch][band] = ret;
            }
        }
    }

    // Side information CRC check word
    if (s->crc_present)
        FUNC7(&s->gb, 16);

    return 0;
}