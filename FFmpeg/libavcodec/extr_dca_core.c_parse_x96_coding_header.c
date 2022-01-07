
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x96_high_res; int x96_rev_no; int x96_subband_start; int x96_nchannels; int* nsubbands; int* joint_intensity_index; int* scale_factor_sel; int gb; scalar_t__ crc_present; int avctx; void*** quant_index_sel; void** bit_allocation_sel; scalar_t__ x96_crc_present; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DCA_SUBBANDS ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ ff_dca_check_crc (int ,int *,int,int) ;
 int* ff_dca_quant_index_sel_nbits ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int parse_x96_coding_header(DCACoreDecoder *s, int exss, int xch_base)
{
    int n, ch, header_size = 0, header_pos = get_bits_count(&s->gb);

    if (get_bits_left(&s->gb) < 0)
        return AVERROR_INVALIDDATA;

    if (exss) {

        header_size = get_bits(&s->gb, 7) + 1;


        if (s->x96_crc_present
            && ff_dca_check_crc(s->avctx, &s->gb, header_pos, header_pos + header_size * 8)) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 channel set header checksum\n");
            return AVERROR_INVALIDDATA;
        }
    }


    s->x96_high_res = get_bits1(&s->gb);


    if (s->x96_rev_no < 8) {
        s->x96_subband_start = get_bits(&s->gb, 5);
        if (s->x96_subband_start > 27) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 subband start index (%d)\n", s->x96_subband_start);
            return AVERROR_INVALIDDATA;
        }
    } else {
        s->x96_subband_start = DCA_SUBBANDS;
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        s->nsubbands[ch] = get_bits(&s->gb, 6) + 1;
        if (s->nsubbands[ch] < DCA_SUBBANDS) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 subband activity count (%d)\n", s->nsubbands[ch]);
            return AVERROR_INVALIDDATA;
        }
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        if ((n = get_bits(&s->gb, 3)) && xch_base)
            n += xch_base - 1;
        if (n > s->x96_nchannels) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 joint intensity coding index\n");
            return AVERROR_INVALIDDATA;
        }
        s->joint_intensity_index[ch] = n;
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        s->scale_factor_sel[ch] = get_bits(&s->gb, 3);
        if (s->scale_factor_sel[ch] >= 6) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 scale factor code book\n");
            return AVERROR_INVALIDDATA;
        }
    }


    for (ch = xch_base; ch < s->x96_nchannels; ch++)
        s->bit_allocation_sel[ch] = get_bits(&s->gb, 3);


    for (n = 0; n < 6 + 4 * s->x96_high_res; n++)
        for (ch = xch_base; ch < s->x96_nchannels; ch++)
            s->quant_index_sel[ch][n] = get_bits(&s->gb, ff_dca_quant_index_sel_nbits[n]);

    if (exss) {



        if (ff_dca_seek_bits(&s->gb, header_pos + header_size * 8)) {
            av_log(s->avctx, AV_LOG_ERROR, "Read past end of X96 channel set header\n");
            return AVERROR_INVALIDDATA;
        }
    } else {
        if (s->crc_present)
            skip_bits(&s->gb, 16);
    }

    return 0;
}
