
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum HeaderType { ____Placeholder_HeaderType } HeaderType ;
struct TYPE_3__ {int nchannels; size_t audio_mode; int ch_mask; unsigned int xxch_mask_nbits; unsigned int xxch_spkr_mask; int xxch_core_mask; int* xxch_dmix_coeff; unsigned int* xxch_dmix_mask; scalar_t__* nsubbands; int* joint_intensity_index; size_t* transition_mode_sel; size_t* scale_factor_sel; size_t* bit_allocation_sel; size_t** quant_index_sel; int gb; scalar_t__ crc_present; int avctx; int ** scale_factor_adj; scalar_t__* subband_vq_start; int xxch_dmix_embedded; int xxch_dmix_scale_inv; int xxch_crc_present; int lfe_present; int nsubframes; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int DCA_CHANNELS ;
 int DCA_CODE_BOOKS ;
 unsigned int DCA_SPEAKER_Cs ;
 int DCA_SPEAKER_MASK_Cs ;
 int DCA_SPEAKER_MASK_LFE1 ;
 scalar_t__ DCA_SUBBANDS ;
 int DCA_XXCH_CHANNELS_MAX ;
 int FF_DCA_DMIXTABLE_OFFSET ;
 unsigned int FF_DCA_DMIXTABLE_SIZE ;
 unsigned int FF_DCA_INV_DMIXTABLE_SIZE ;



 int* audio_mode_ch_mask ;
 int av_assert1 (int) ;
 int av_log (int ,int ,char*,...) ;
 int av_popcount (unsigned int) ;
 int avpriv_request_sample (int ,char*,int) ;
 int* ff_dca_channels ;
 int ff_dca_check_crc (int ,int *,int,int) ;
 int* ff_dca_dmixtable ;
 int * ff_dca_inv_dmixtable ;
 scalar_t__* ff_dca_quant_index_group_size ;
 int* ff_dca_quant_index_sel_nbits ;
 int * ff_dca_scale_factor_adj ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 size_t get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 scalar_t__ get_bits_left (int *) ;
 unsigned int get_bits_long (int *,unsigned int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int parse_coding_header(DCACoreDecoder *s, enum HeaderType header, int xch_base)
{
    int n, ch, nchannels, header_size = 0, header_pos = get_bits_count(&s->gb);
    unsigned int mask, index;

    if (get_bits_left(&s->gb) < 0)
        return AVERROR_INVALIDDATA;

    switch (header) {
    case 130:

        s->nsubframes = get_bits(&s->gb, 4) + 1;


        s->nchannels = get_bits(&s->gb, 3) + 1;
        if (s->nchannels != ff_dca_channels[s->audio_mode]) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid number of primary audio channels (%d) for audio channel arrangement (%d)\n", s->nchannels, s->audio_mode);
            return AVERROR_INVALIDDATA;
        }
        av_assert1(s->nchannels <= DCA_CHANNELS - 2);

        s->ch_mask = audio_mode_ch_mask[s->audio_mode];


        if (s->lfe_present)
            s->ch_mask |= DCA_SPEAKER_MASK_LFE1;
        break;

    case 129:
        s->nchannels = ff_dca_channels[s->audio_mode] + 1;
        av_assert1(s->nchannels <= DCA_CHANNELS - 1);
        s->ch_mask |= DCA_SPEAKER_MASK_Cs;
        break;

    case 128:

        header_size = get_bits(&s->gb, 7) + 1;


        if (s->xxch_crc_present
            && ff_dca_check_crc(s->avctx, &s->gb, header_pos, header_pos + header_size * 8)) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid XXCH channel set header checksum\n");
            return AVERROR_INVALIDDATA;
        }


        nchannels = get_bits(&s->gb, 3) + 1;
        if (nchannels > DCA_XXCH_CHANNELS_MAX) {
            avpriv_request_sample(s->avctx, "%d XXCH channels", nchannels);
            return AVERROR_PATCHWELCOME;
        }
        s->nchannels = ff_dca_channels[s->audio_mode] + nchannels;
        av_assert1(s->nchannels <= DCA_CHANNELS);


        mask = get_bits_long(&s->gb, s->xxch_mask_nbits - DCA_SPEAKER_Cs);
        s->xxch_spkr_mask = mask << DCA_SPEAKER_Cs;

        if (av_popcount(s->xxch_spkr_mask) != nchannels) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid XXCH speaker layout mask (%#x)\n", s->xxch_spkr_mask);
            return AVERROR_INVALIDDATA;
        }

        if (s->xxch_core_mask & s->xxch_spkr_mask) {
            av_log(s->avctx, AV_LOG_ERROR, "XXCH speaker layout mask (%#x) overlaps with core (%#x)\n", s->xxch_spkr_mask, s->xxch_core_mask);
            return AVERROR_INVALIDDATA;
        }


        s->ch_mask = s->xxch_core_mask | s->xxch_spkr_mask;


        if (get_bits1(&s->gb)) {
            int *coeff_ptr = s->xxch_dmix_coeff;


            s->xxch_dmix_embedded = get_bits1(&s->gb);


            index = get_bits(&s->gb, 6) * 4 - FF_DCA_DMIXTABLE_OFFSET - 3;
            if (index >= FF_DCA_INV_DMIXTABLE_SIZE) {
                av_log(s->avctx, AV_LOG_ERROR, "Invalid XXCH downmix scale index (%d)\n", index);
                return AVERROR_INVALIDDATA;
            }
            s->xxch_dmix_scale_inv = ff_dca_inv_dmixtable[index];


            for (ch = 0; ch < nchannels; ch++) {
                mask = get_bits_long(&s->gb, s->xxch_mask_nbits);
                if ((mask & s->xxch_core_mask) != mask) {
                    av_log(s->avctx, AV_LOG_ERROR, "Invalid XXCH downmix channel mapping mask (%#x)\n", mask);
                    return AVERROR_INVALIDDATA;
                }
                s->xxch_dmix_mask[ch] = mask;
            }


            for (ch = 0; ch < nchannels; ch++) {
                for (n = 0; n < s->xxch_mask_nbits; n++) {
                    if (s->xxch_dmix_mask[ch] & (1U << n)) {
                        int code = get_bits(&s->gb, 7);
                        int sign = (code >> 6) - 1;
                        if (code &= 63) {
                            index = code * 4 - 3;
                            if (index >= FF_DCA_DMIXTABLE_SIZE) {
                                av_log(s->avctx, AV_LOG_ERROR, "Invalid XXCH downmix coefficient index (%d)\n", index);
                                return AVERROR_INVALIDDATA;
                            }
                            *coeff_ptr++ = (ff_dca_dmixtable[index] ^ sign) - sign;
                        } else {
                            *coeff_ptr++ = 0;
                        }
                    }
                }
            }
        } else {
            s->xxch_dmix_embedded = 0;
        }

        break;
    }


    for (ch = xch_base; ch < s->nchannels; ch++) {
        s->nsubbands[ch] = get_bits(&s->gb, 5) + 2;
        if (s->nsubbands[ch] > DCA_SUBBANDS) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid subband activity count\n");
            return AVERROR_INVALIDDATA;
        }
    }


    for (ch = xch_base; ch < s->nchannels; ch++)
        s->subband_vq_start[ch] = get_bits(&s->gb, 5) + 1;


    for (ch = xch_base; ch < s->nchannels; ch++) {
        if ((n = get_bits(&s->gb, 3)) && header == 128)
            n += xch_base - 1;
        if (n > s->nchannels) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid joint intensity coding index\n");
            return AVERROR_INVALIDDATA;
        }
        s->joint_intensity_index[ch] = n;
    }


    for (ch = xch_base; ch < s->nchannels; ch++)
        s->transition_mode_sel[ch] = get_bits(&s->gb, 2);


    for (ch = xch_base; ch < s->nchannels; ch++) {
        s->scale_factor_sel[ch] = get_bits(&s->gb, 3);
        if (s->scale_factor_sel[ch] == 7) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid scale factor code book\n");
            return AVERROR_INVALIDDATA;
        }
    }


    for (ch = xch_base; ch < s->nchannels; ch++) {
        s->bit_allocation_sel[ch] = get_bits(&s->gb, 3);
        if (s->bit_allocation_sel[ch] == 7) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid bit allocation quantizer select\n");
            return AVERROR_INVALIDDATA;
        }
    }


    for (n = 0; n < DCA_CODE_BOOKS; n++)
        for (ch = xch_base; ch < s->nchannels; ch++)
            s->quant_index_sel[ch][n] = get_bits(&s->gb, ff_dca_quant_index_sel_nbits[n]);


    for (n = 0; n < DCA_CODE_BOOKS; n++)
        for (ch = xch_base; ch < s->nchannels; ch++)
            if (s->quant_index_sel[ch][n] < ff_dca_quant_index_group_size[n])
                s->scale_factor_adj[ch][n] = ff_dca_scale_factor_adj[get_bits(&s->gb, 2)];

    if (header == 128) {



        if (ff_dca_seek_bits(&s->gb, header_pos + header_size * 8)) {
            av_log(s->avctx, AV_LOG_ERROR, "Read past end of XXCH channel set header\n");
            return AVERROR_INVALIDDATA;
        }
    } else {

        if (s->crc_present)
            skip_bits(&s->gb, 16);
    }

    return 0;
}
