
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
typedef enum HeaderType { ____Placeholder_HeaderType } HeaderType ;
struct TYPE_6__ {int* nsubsubframes; int npcmblocks; int nchannels; int* subband_vq_start; int* nsubbands; int*** scale_factors; int lfe_present; int** bit_allocation; int bit_rate; int*** transition_mode; int** scale_factor_adj; int* joint_intensity_index; int * joint_scale_factors; scalar_t__** subband_samples; TYPE_1__* dcadsp; int * prediction_mode; int * prediction_vq_index; int avctx; int gb; scalar_t__ sync_ssf; void** lfe_samples; } ;
struct TYPE_5__ {int (* decode_joint ) (scalar_t__*,scalar_t__*,int ,int,int,int,int) ;int (* decode_hf ) (scalar_t__*,int*,int ,int**,int,int,int,int) ;} ;
typedef TYPE_2__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DCA_SUBBANDS ;
 int DCA_SUBBAND_SAMPLES ;
 unsigned int FF_ARRAY_ELEMS (int*) ;
 int HEADER_CORE ;
 int av_assert1 (int) ;
 int av_log (int ,int ,char*) ;
 void* clip23 (int) ;
 int extract_audio (TYPE_2__*,int*,int,int) ;
 int ff_dca_core_dequantize (scalar_t__,int*,int,int,int ,int) ;
 int ff_dca_high_freq_vq ;
 int* ff_dca_lossless_quant ;
 int* ff_dca_lossy_quant ;
 int* ff_dca_scale_factor_quant7 ;
 int get_array (int *,int*,int,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits_left (int *) ;
 int inverse_adpcm (scalar_t__*,int ,int ,int ,int,int,int) ;
 int mul23 (int,int) ;
 int stub1 (scalar_t__*,int*,int ,int**,int,int,int,int) ;
 int stub2 (scalar_t__*,scalar_t__*,int ,int,int,int,int) ;

__attribute__((used)) static int parse_subframe_audio(DCACoreDecoder *s, int sf, enum HeaderType header,
                                int xch_base, int *sub_pos, int *lfe_pos)
{
    int32_t audio[16], scale;
    int n, ssf, ofs, ch, band;


    int nsamples = s->nsubsubframes[sf] * DCA_SUBBAND_SAMPLES;
    if (*sub_pos + nsamples > s->npcmblocks) {
        av_log(s->avctx, AV_LOG_ERROR, "Subband sample buffer overflow\n");
        return AVERROR_INVALIDDATA;
    }

    if (get_bits_left(&s->gb) < 0)
        return AVERROR_INVALIDDATA;


    for (ch = xch_base; ch < s->nchannels; ch++) {
        int32_t vq_index[DCA_SUBBANDS];

        for (band = s->subband_vq_start[ch]; band < s->nsubbands[ch]; band++)

            vq_index[band] = get_bits(&s->gb, 10);

        if (s->subband_vq_start[ch] < s->nsubbands[ch]) {
            s->dcadsp->decode_hf(s->subband_samples[ch], vq_index,
                                 ff_dca_high_freq_vq, s->scale_factors[ch],
                                 s->subband_vq_start[ch], s->nsubbands[ch],
                                 *sub_pos, nsamples);
        }
    }


    if (s->lfe_present && header == HEADER_CORE) {
        unsigned int index;


        int nlfesamples = 2 * s->lfe_present * s->nsubsubframes[sf];
        av_assert1((unsigned int)nlfesamples <= FF_ARRAY_ELEMS(audio));


        get_array(&s->gb, audio, nlfesamples, 8);


        index = get_bits(&s->gb, 8);
        if (index >= FF_ARRAY_ELEMS(ff_dca_scale_factor_quant7)) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid LFE scale factor index\n");
            return AVERROR_INVALIDDATA;
        }


        scale = ff_dca_scale_factor_quant7[index];


        scale = mul23(4697620 , scale);


        for (n = 0, ofs = *lfe_pos; n < nlfesamples; n++, ofs++)
            s->lfe_samples[ofs] = clip23(audio[n] * scale >> 4);


        *lfe_pos = ofs;
    }


    for (ssf = 0, ofs = *sub_pos; ssf < s->nsubsubframes[sf]; ssf++) {
        for (ch = xch_base; ch < s->nchannels; ch++) {
            if (get_bits_left(&s->gb) < 0)
                return AVERROR_INVALIDDATA;


            for (band = 0; band < s->subband_vq_start[ch]; band++) {
                int ret, trans_ssf, abits = s->bit_allocation[ch][band];
                int32_t step_size;


                if ((ret = extract_audio(s, audio, abits, ch)) < 0)
                    return ret;



                if (s->bit_rate == 3)
                    step_size = ff_dca_lossless_quant[abits];
                else
                    step_size = ff_dca_lossy_quant[abits];


                trans_ssf = s->transition_mode[sf][ch][band];


                if (trans_ssf == 0 || ssf < trans_ssf)
                    scale = s->scale_factors[ch][band][0];
                else
                    scale = s->scale_factors[ch][band][1];


                if (ret > 0) {
                    int64_t adj = s->scale_factor_adj[ch][abits - 1];
                    scale = clip23(adj * scale >> 22);
                }

                ff_dca_core_dequantize(s->subband_samples[ch][band] + ofs,
                           audio, step_size, scale, 0, DCA_SUBBAND_SAMPLES);
            }
        }


        if ((ssf == s->nsubsubframes[sf] - 1 || s->sync_ssf) && get_bits(&s->gb, 16) != 0xffff) {
            av_log(s->avctx, AV_LOG_ERROR, "DSYNC check failed\n");
            return AVERROR_INVALIDDATA;
        }

        ofs += DCA_SUBBAND_SAMPLES;
    }


    for (ch = xch_base; ch < s->nchannels; ch++) {
        inverse_adpcm(s->subband_samples[ch], s->prediction_vq_index[ch],
                      s->prediction_mode[ch], 0, s->nsubbands[ch],
                      *sub_pos, nsamples);
    }


    for (ch = xch_base; ch < s->nchannels; ch++) {
        int src_ch = s->joint_intensity_index[ch] - 1;
        if (src_ch >= 0) {
            s->dcadsp->decode_joint(s->subband_samples[ch], s->subband_samples[src_ch],
                                    s->joint_scale_factors[ch], s->nsubbands[ch],
                                    s->nsubbands[src_ch], *sub_pos, nsamples);
        }
    }


    *sub_pos = ofs;
    return 0;
}
