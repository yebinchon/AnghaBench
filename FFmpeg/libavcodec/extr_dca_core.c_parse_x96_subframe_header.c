
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x96_nchannels; int x96_subband_start; int* nsubbands; int* bit_allocation_sel; int x96_high_res; int** bit_allocation; int* scale_factor_sel; int*** scale_factors; int* joint_intensity_index; int* joint_scale_sel; int** joint_scale_factors; int gb; scalar_t__ crc_present; int avctx; void*** prediction_vq_index; scalar_t__** prediction_mode; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 scalar_t__ dca_get_vlc (int *,int *,int) ;
 int * ff_dca_vlc_quant_index ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int parse_joint_scale (TYPE_1__*,int) ;
 int parse_scale (TYPE_1__*,int*,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int parse_x96_subframe_header(DCACoreDecoder *s, int xch_base)
{
    int ch, band, ret;

    if (get_bits_left(&s->gb) < 0)
        return AVERROR_INVALIDDATA;


    for (ch = xch_base; ch < s->x96_nchannels; ch++)
        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++)
            s->prediction_mode[ch][band] = get_bits1(&s->gb);


    for (ch = xch_base; ch < s->x96_nchannels; ch++)
        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++)
            if (s->prediction_mode[ch][band])
                s->prediction_vq_index[ch][band] = get_bits(&s->gb, 12);


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        int sel = s->bit_allocation_sel[ch];
        int abits = 0;

        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++) {

            if (sel < 7)
                abits += dca_get_vlc(&s->gb, &ff_dca_vlc_quant_index[5 + 2 * s->x96_high_res], sel);
            else
                abits = get_bits(&s->gb, 3 + s->x96_high_res);

            if (abits < 0 || abits > 7 + 8 * s->x96_high_res) {
                av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 bit allocation index\n");
                return AVERROR_INVALIDDATA;
            }

            s->bit_allocation[ch][band] = abits;
        }
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        int sel = s->scale_factor_sel[ch];
        int scale_index = 0;



        for (band = s->x96_subband_start; band < s->nsubbands[ch]; band++) {
            if ((ret = parse_scale(s, &scale_index, sel)) < 0)
                return ret;
            s->scale_factors[ch][band >> 1][band & 1] = ret;
        }
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        if (s->joint_intensity_index[ch]) {
            s->joint_scale_sel[ch] = get_bits(&s->gb, 3);
            if (s->joint_scale_sel[ch] == 7) {
                av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 joint scale factor code book\n");
                return AVERROR_INVALIDDATA;
            }
        }
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        int src_ch = s->joint_intensity_index[ch] - 1;
        if (src_ch >= 0) {
            int sel = s->joint_scale_sel[ch];
            for (band = s->nsubbands[ch]; band < s->nsubbands[src_ch]; band++) {
                if ((ret = parse_joint_scale(s, sel)) < 0)
                    return ret;
                s->joint_scale_factors[ch][band] = ret;
            }
        }
    }


    if (s->crc_present)
        skip_bits(&s->gb, 16);

    return 0;
}
