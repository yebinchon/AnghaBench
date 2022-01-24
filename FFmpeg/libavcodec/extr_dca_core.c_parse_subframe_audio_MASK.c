#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  int int32_t ;
typedef  enum HeaderType { ____Placeholder_HeaderType } HeaderType ;
struct TYPE_6__ {int* nsubsubframes; int npcmblocks; int nchannels; int* subband_vq_start; int* nsubbands; int*** scale_factors; int lfe_present; int** bit_allocation; int bit_rate; int*** transition_mode; int** scale_factor_adj; int* joint_intensity_index; int /*<<< orphan*/ * joint_scale_factors; scalar_t__** subband_samples; TYPE_1__* dcadsp; int /*<<< orphan*/ * prediction_mode; int /*<<< orphan*/ * prediction_vq_index; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; scalar_t__ sync_ssf; void** lfe_samples; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* decode_joint ) (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int,int,int,int) ;int /*<<< orphan*/  (* decode_hf ) (scalar_t__*,int*,int /*<<< orphan*/ ,int**,int,int,int,int) ;} ;
typedef  TYPE_2__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int DCA_SUBBANDS ; 
 int DCA_SUBBAND_SAMPLES ; 
 unsigned int FUNC0 (int*) ; 
 int HEADER_CORE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_dca_high_freq_vq ; 
 int* ff_dca_lossless_quant ; 
 int* ff_dca_lossy_quant ; 
 int* ff_dca_scale_factor_quant7 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int*,int /*<<< orphan*/ ,int**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC13(DCACoreDecoder *s, int sf, enum HeaderType header,
                                int xch_base, int *sub_pos, int *lfe_pos)
{
    int32_t audio[16], scale;
    int n, ssf, ofs, ch, band;

    // Check number of subband samples in this subframe
    int nsamples = s->nsubsubframes[sf] * DCA_SUBBAND_SAMPLES;
    if (*sub_pos + nsamples > s->npcmblocks) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Subband sample buffer overflow\n");
        return AVERROR_INVALIDDATA;
    }

    if (FUNC8(&s->gb) < 0)
        return AVERROR_INVALIDDATA;

    // VQ encoded subbands
    for (ch = xch_base; ch < s->nchannels; ch++) {
        int32_t vq_index[DCA_SUBBANDS];

        for (band = s->subband_vq_start[ch]; band < s->nsubbands[ch]; band++)
            // Extract the VQ address from the bit stream
            vq_index[band] = FUNC7(&s->gb, 10);

        if (s->subband_vq_start[ch] < s->nsubbands[ch]) {
            s->dcadsp->decode_hf(s->subband_samples[ch], vq_index,
                                 ff_dca_high_freq_vq, s->scale_factors[ch],
                                 s->subband_vq_start[ch], s->nsubbands[ch],
                                 *sub_pos, nsamples);
        }
    }

    // Low frequency effect data
    if (s->lfe_present && header == HEADER_CORE) {
        unsigned int index;

        // Determine number of LFE samples in this subframe
        int nlfesamples = 2 * s->lfe_present * s->nsubsubframes[sf];
        FUNC1((unsigned int)nlfesamples <= FUNC0(audio));

        // Extract LFE samples from the bit stream
        FUNC6(&s->gb, audio, nlfesamples, 8);

        // Extract scale factor index from the bit stream
        index = FUNC7(&s->gb, 8);
        if (index >= FUNC0(ff_dca_scale_factor_quant7)) {
            FUNC2(s->avctx, AV_LOG_ERROR, "Invalid LFE scale factor index\n");
            return AVERROR_INVALIDDATA;
        }

        // Look up the 7-bit root square quantization table
        scale = ff_dca_scale_factor_quant7[index];

        // Account for quantizer step size which is 0.035
        scale = FUNC10(4697620 /* 0.035 * (1 << 27) */, scale);

        // Scale and take the LFE samples
        for (n = 0, ofs = *lfe_pos; n < nlfesamples; n++, ofs++)
            s->lfe_samples[ofs] = FUNC3(audio[n] * scale >> 4);

        // Advance LFE sample pointer for the next subframe
        *lfe_pos = ofs;
    }

    // Audio data
    for (ssf = 0, ofs = *sub_pos; ssf < s->nsubsubframes[sf]; ssf++) {
        for (ch = xch_base; ch < s->nchannels; ch++) {
            if (FUNC8(&s->gb) < 0)
                return AVERROR_INVALIDDATA;

            // Not high frequency VQ subbands
            for (band = 0; band < s->subband_vq_start[ch]; band++) {
                int ret, trans_ssf, abits = s->bit_allocation[ch][band];
                int32_t step_size;

                // Extract bits from the bit stream
                if ((ret = FUNC4(s, audio, abits, ch)) < 0)
                    return ret;

                // Select quantization step size table and look up
                // quantization step size
                if (s->bit_rate == 3)
                    step_size = ff_dca_lossless_quant[abits];
                else
                    step_size = ff_dca_lossy_quant[abits];

                // Identify transient location
                trans_ssf = s->transition_mode[sf][ch][band];

                // Determine proper scale factor
                if (trans_ssf == 0 || ssf < trans_ssf)
                    scale = s->scale_factors[ch][band][0];
                else
                    scale = s->scale_factors[ch][band][1];

                // Adjust scale factor when SEL indicates Huffman code
                if (ret > 0) {
                    int64_t adj = s->scale_factor_adj[ch][abits - 1];
                    scale = FUNC3(adj * scale >> 22);
                }

                FUNC5(s->subband_samples[ch][band] + ofs,
                           audio, step_size, scale, 0, DCA_SUBBAND_SAMPLES);
            }
        }

        // DSYNC
        if ((ssf == s->nsubsubframes[sf] - 1 || s->sync_ssf) && FUNC7(&s->gb, 16) != 0xffff) {
            FUNC2(s->avctx, AV_LOG_ERROR, "DSYNC check failed\n");
            return AVERROR_INVALIDDATA;
        }

        ofs += DCA_SUBBAND_SAMPLES;
    }

    // Inverse ADPCM
    for (ch = xch_base; ch < s->nchannels; ch++) {
        FUNC9(s->subband_samples[ch], s->prediction_vq_index[ch],
                      s->prediction_mode[ch], 0, s->nsubbands[ch],
                      *sub_pos, nsamples);
    }

    // Joint subband coding
    for (ch = xch_base; ch < s->nchannels; ch++) {
        int src_ch = s->joint_intensity_index[ch] - 1;
        if (src_ch >= 0) {
            s->dcadsp->decode_joint(s->subband_samples[ch], s->subband_samples[src_ch],
                                    s->joint_scale_factors[ch], s->nsubbands[ch],
                                    s->nsubbands[src_ch], *sub_pos, nsamples);
        }
    }

    // Advance subband sample pointer for the next subframe
    *sub_pos = ofs;
    return 0;
}