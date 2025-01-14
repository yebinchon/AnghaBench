
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int8_t ;
typedef int int32_t ;
struct TYPE_7__ {int* nsubsubframes; int npcmblocks; int x96_nchannels; int x96_subband_start; int* nsubbands; int*** x96_subband_samples; int*** scale_factors; int** bit_allocation; int bit_rate; int* joint_intensity_index; int * joint_scale_factors; TYPE_1__* dcadsp; int * prediction_mode; int * prediction_vq_index; int avctx; int gb; scalar_t__ sync_ssf; } ;
struct TYPE_6__ {int (* decode_joint ) (int**,int**,int ,int,int,int,int) ;} ;
typedef TYPE_2__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DCA_SUBBAND_SAMPLES ;
 int FFMIN (int,int) ;
 int av_log (int ,int ,char*) ;
 int clip23 (int) ;
 int extract_audio (TYPE_2__*,int*,int,int) ;
 int ff_dca_core_dequantize (int*,int*,int,int,int ,int) ;
 int** ff_dca_high_freq_vq ;
 int* ff_dca_lossless_quant ;
 int* ff_dca_lossy_quant ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits_left (int *) ;
 int inverse_adpcm (int**,int ,int ,int,int,int,int) ;
 int memset (int*,int ,int) ;
 int mul31 (int ,int) ;
 int rand_x96 (TYPE_2__*) ;
 int stub1 (int**,int**,int ,int,int,int,int) ;

__attribute__((used)) static int parse_x96_subframe_audio(DCACoreDecoder *s, int sf, int xch_base, int *sub_pos)
{
    int n, ssf, ch, band, ofs;


    int nsamples = s->nsubsubframes[sf] * DCA_SUBBAND_SAMPLES;
    if (*sub_pos + nsamples > s->npcmblocks) {
        av_log(s->avctx, AV_LOG_ERROR, "Subband sample buffer overflow\n");
        return AVERROR_INVALIDDATA;
    }

    if (get_bits_left(&s->gb) < 0)
        return AVERROR_INVALIDDATA;


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++) {

            int32_t *samples = s->x96_subband_samples[ch][band] + *sub_pos;
            int32_t scale = s->scale_factors[ch][band >> 1][band & 1];

            switch (s->bit_allocation[ch][band]) {
            case 0:
                if (scale <= 1)
                    memset(samples, 0, nsamples * sizeof(int32_t));
                else for (n = 0; n < nsamples; n++)

                    samples[n] = mul31(rand_x96(s), scale);
                break;

            case 1:
                for (ssf = 0; ssf < (s->nsubsubframes[sf] + 1) / 2; ssf++) {


                    const int8_t *vq_samples = ff_dca_high_freq_vq[get_bits(&s->gb, 10)];

                    for (n = 0; n < FFMIN(nsamples - ssf * 16, 16); n++)
                        *samples++ = clip23(vq_samples[n] * scale + (1 << 3) >> 4);
                }
                break;
            }
        }
    }


    for (ssf = 0, ofs = *sub_pos; ssf < s->nsubsubframes[sf]; ssf++) {
        for (ch = xch_base; ch < s->x96_nchannels; ch++) {
            if (get_bits_left(&s->gb) < 0)
                return AVERROR_INVALIDDATA;

            for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++) {
                int ret, abits = s->bit_allocation[ch][band] - 1;
                int32_t audio[DCA_SUBBAND_SAMPLES], step_size, scale;


                if (abits < 1)
                    continue;


                if ((ret = extract_audio(s, audio, abits, ch)) < 0)
                    return ret;



                if (s->bit_rate == 3)
                    step_size = ff_dca_lossless_quant[abits];
                else
                    step_size = ff_dca_lossy_quant[abits];


                scale = s->scale_factors[ch][band >> 1][band & 1];

                ff_dca_core_dequantize(s->x96_subband_samples[ch][band] + ofs,
                           audio, step_size, scale, 0, DCA_SUBBAND_SAMPLES);
            }
        }


        if ((ssf == s->nsubsubframes[sf] - 1 || s->sync_ssf) && get_bits(&s->gb, 16) != 0xffff) {
            av_log(s->avctx, AV_LOG_ERROR, "X96-DSYNC check failed\n");
            return AVERROR_INVALIDDATA;
        }

        ofs += DCA_SUBBAND_SAMPLES;
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        inverse_adpcm(s->x96_subband_samples[ch], s->prediction_vq_index[ch],
                      s->prediction_mode[ch], s->x96_subband_start, s->nsubbands[ch],
                      *sub_pos, nsamples);
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        int src_ch = s->joint_intensity_index[ch] - 1;
        if (src_ch >= 0) {
            s->dcadsp->decode_joint(s->x96_subband_samples[ch], s->x96_subband_samples[src_ch],
                                    s->joint_scale_factors[ch], s->nsubbands[ch],
                                    s->nsubbands[src_ch], *sub_pos, nsamples);
        }
    }


    *sub_pos = ofs;
    return 0;
}
