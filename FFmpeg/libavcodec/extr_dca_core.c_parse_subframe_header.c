
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum HeaderType { ____Placeholder_HeaderType } HeaderType ;
struct TYPE_5__ {int* nsubsubframes; int nchannels; int* nsubbands; int* bit_allocation_sel; int* subband_vq_start; int** bit_allocation; int* transition_mode_sel; int* scale_factor_sel; int*** scale_factors; int* joint_intensity_index; int* joint_scale_sel; int** joint_scale_factors; int gb; scalar_t__ crc_present; scalar_t__ drc_present; int avctx; void**** transition_mode; void*** prediction_vq_index; scalar_t__** prediction_mode; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DCA_ABITS_MAX ;
 int HEADER_CORE ;
 int av_log (int ,int ,char*) ;
 void* dca_get_vlc (int *,int *,int) ;
 int ff_dca_vlc_bit_allocation ;
 int ff_dca_vlc_transition_mode ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int memset (void**,int ,int) ;
 int parse_joint_scale (TYPE_1__*,int) ;
 int parse_scale (TYPE_1__*,int*,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int parse_subframe_header(DCACoreDecoder *s, int sf,
                                 enum HeaderType header, int xch_base)
{
    int ch, band, ret;

    if (get_bits_left(&s->gb) < 0)
        return AVERROR_INVALIDDATA;

    if (header == HEADER_CORE) {

        s->nsubsubframes[sf] = get_bits(&s->gb, 2) + 1;


        skip_bits(&s->gb, 3);
    }


    for (ch = xch_base; ch < s->nchannels; ch++)
        for (band = 0; band < s->nsubbands[ch]; band++)
            s->prediction_mode[ch][band] = get_bits1(&s->gb);


    for (ch = xch_base; ch < s->nchannels; ch++)
        for (band = 0; band < s->nsubbands[ch]; band++)
            if (s->prediction_mode[ch][band])
                s->prediction_vq_index[ch][band] = get_bits(&s->gb, 12);


    for (ch = xch_base; ch < s->nchannels; ch++) {
        int sel = s->bit_allocation_sel[ch];

        for (band = 0; band < s->subband_vq_start[ch]; band++) {
            int abits;

            if (sel < 5)
                abits = dca_get_vlc(&s->gb, &ff_dca_vlc_bit_allocation, sel);
            else
                abits = get_bits(&s->gb, sel - 1);

            if (abits > DCA_ABITS_MAX) {
                av_log(s->avctx, AV_LOG_ERROR, "Invalid bit allocation index\n");
                return AVERROR_INVALIDDATA;
            }

            s->bit_allocation[ch][band] = abits;
        }
    }


    for (ch = xch_base; ch < s->nchannels; ch++) {

        memset(s->transition_mode[sf][ch], 0, sizeof(s->transition_mode[0][0]));


        if (s->nsubsubframes[sf] > 1) {
            int sel = s->transition_mode_sel[ch];
            for (band = 0; band < s->subband_vq_start[ch]; band++)
                if (s->bit_allocation[ch][band])
                    s->transition_mode[sf][ch][band] = dca_get_vlc(&s->gb, &ff_dca_vlc_transition_mode, sel);
        }
    }


    for (ch = xch_base; ch < s->nchannels; ch++) {
        int sel = s->scale_factor_sel[ch];
        int scale_index = 0;


        for (band = 0; band < s->subband_vq_start[ch]; band++) {
            if (s->bit_allocation[ch][band]) {
                if ((ret = parse_scale(s, &scale_index, sel)) < 0)
                    return ret;
                s->scale_factors[ch][band][0] = ret;
                if (s->transition_mode[sf][ch][band]) {
                    if ((ret = parse_scale(s, &scale_index, sel)) < 0)
                        return ret;
                    s->scale_factors[ch][band][1] = ret;
                }
            } else {
                s->scale_factors[ch][band][0] = 0;
            }
        }


        for (band = s->subband_vq_start[ch]; band < s->nsubbands[ch]; band++) {
            if ((ret = parse_scale(s, &scale_index, sel)) < 0)
                return ret;
            s->scale_factors[ch][band][0] = ret;
        }
    }


    for (ch = xch_base; ch < s->nchannels; ch++) {
        if (s->joint_intensity_index[ch]) {
            s->joint_scale_sel[ch] = get_bits(&s->gb, 3);
            if (s->joint_scale_sel[ch] == 7) {
                av_log(s->avctx, AV_LOG_ERROR, "Invalid joint scale factor code book\n");
                return AVERROR_INVALIDDATA;
            }
        }
    }


    for (ch = xch_base; ch < s->nchannels; ch++) {
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


    if (s->drc_present && header == HEADER_CORE)
        skip_bits(&s->gb, 8);


    if (s->crc_present)
        skip_bits(&s->gb, 16);

    return 0;
}
