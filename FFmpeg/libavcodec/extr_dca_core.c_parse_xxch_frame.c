
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xxch_mask_nbits; int xxch_core_mask; int ch_mask; int avctx; int gb; int nchannels; int xxch_crc_present; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int DCA_SPEAKER_Cs ;
 int DCA_SPEAKER_MASK_Ls ;
 int DCA_SPEAKER_MASK_Lss ;
 int DCA_SPEAKER_MASK_Rs ;
 int DCA_SPEAKER_MASK_Rss ;
 scalar_t__ DCA_SYNCWORD_XXCH ;
 int HEADER_XXCH ;
 int av_log (int ,int ,char*,...) ;
 int avpriv_request_sample (int ,char*,int) ;
 scalar_t__ ff_dca_check_crc (int ,int *,int,int) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 scalar_t__ get_bits_long (int *,int) ;
 int parse_frame_data (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int parse_xxch_frame(DCACoreDecoder *s)
{
    int xxch_nchsets, xxch_frame_size;
    int ret, mask, header_size, header_pos = get_bits_count(&s->gb);


    if (get_bits_long(&s->gb, 32) != DCA_SYNCWORD_XXCH) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid XXCH sync word\n");
        return AVERROR_INVALIDDATA;
    }


    header_size = get_bits(&s->gb, 6) + 1;


    if (ff_dca_check_crc(s->avctx, &s->gb, header_pos + 32, header_pos + header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid XXCH frame header checksum\n");
        return AVERROR_INVALIDDATA;
    }


    s->xxch_crc_present = get_bits1(&s->gb);


    s->xxch_mask_nbits = get_bits(&s->gb, 5) + 1;
    if (s->xxch_mask_nbits <= DCA_SPEAKER_Cs) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid number of bits for XXCH speaker mask (%d)\n", s->xxch_mask_nbits);
        return AVERROR_INVALIDDATA;
    }


    xxch_nchsets = get_bits(&s->gb, 2) + 1;
    if (xxch_nchsets > 1) {
        avpriv_request_sample(s->avctx, "%d XXCH channel sets", xxch_nchsets);
        return AVERROR_PATCHWELCOME;
    }


    xxch_frame_size = get_bits(&s->gb, 14) + 1;


    s->xxch_core_mask = get_bits_long(&s->gb, s->xxch_mask_nbits);


    mask = s->ch_mask;

    if ((mask & DCA_SPEAKER_MASK_Ls) && (s->xxch_core_mask & DCA_SPEAKER_MASK_Lss))
        mask = (mask & ~DCA_SPEAKER_MASK_Ls) | DCA_SPEAKER_MASK_Lss;

    if ((mask & DCA_SPEAKER_MASK_Rs) && (s->xxch_core_mask & DCA_SPEAKER_MASK_Rss))
        mask = (mask & ~DCA_SPEAKER_MASK_Rs) | DCA_SPEAKER_MASK_Rss;

    if (mask != s->xxch_core_mask) {
        av_log(s->avctx, AV_LOG_ERROR, "XXCH core speaker activity mask (%#x) disagrees with core (%#x)\n", s->xxch_core_mask, mask);
        return AVERROR_INVALIDDATA;
    }




    if (ff_dca_seek_bits(&s->gb, header_pos + header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of XXCH frame header\n");
        return AVERROR_INVALIDDATA;
    }


    if ((ret = parse_frame_data(s, HEADER_XXCH, s->nchannels)) < 0)
        return ret;

    if (ff_dca_seek_bits(&s->gb, header_pos + header_size * 8 + xxch_frame_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of XXCH channel set\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
