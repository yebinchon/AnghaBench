
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nchannels; int nsubframes; int avctx; int gb; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DCA_EXSS_CHANNELS_MAX ;
 int DCA_EXSS_CHSETS_MAX ;
 int DCA_SUBBANDS ;
 scalar_t__ DCA_SYNCWORD_XBR ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ ff_dca_check_crc (int ,int *,int,int) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 scalar_t__ get_bits_long (int *,int) ;
 int parse_xbr_subframe (TYPE_1__*,int,int,int*,int,int,int*) ;

__attribute__((used)) static int parse_xbr_frame(DCACoreDecoder *s)
{
    int xbr_frame_size[DCA_EXSS_CHSETS_MAX];
    int xbr_nchannels[DCA_EXSS_CHSETS_MAX];
    int xbr_nsubbands[DCA_EXSS_CHSETS_MAX * DCA_EXSS_CHANNELS_MAX];
    int xbr_nchsets, xbr_transition_mode, xbr_band_nbits, xbr_base_ch;
    int i, ch1, ch2, ret, header_size, header_pos = get_bits_count(&s->gb);


    if (get_bits_long(&s->gb, 32) != DCA_SYNCWORD_XBR) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid XBR sync word\n");
        return AVERROR_INVALIDDATA;
    }


    header_size = get_bits(&s->gb, 6) + 1;


    if (ff_dca_check_crc(s->avctx, &s->gb, header_pos + 32, header_pos + header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid XBR frame header checksum\n");
        return AVERROR_INVALIDDATA;
    }


    xbr_nchsets = get_bits(&s->gb, 2) + 1;


    for (i = 0; i < xbr_nchsets; i++)
        xbr_frame_size[i] = get_bits(&s->gb, 14) + 1;


    xbr_transition_mode = get_bits1(&s->gb);


    for (i = 0, ch2 = 0; i < xbr_nchsets; i++) {
        xbr_nchannels[i] = get_bits(&s->gb, 3) + 1;
        xbr_band_nbits = get_bits(&s->gb, 2) + 5;
        for (ch1 = 0; ch1 < xbr_nchannels[i]; ch1++, ch2++) {
            xbr_nsubbands[ch2] = get_bits(&s->gb, xbr_band_nbits) + 1;
            if (xbr_nsubbands[ch2] > DCA_SUBBANDS) {
                av_log(s->avctx, AV_LOG_ERROR, "Invalid number of active XBR subbands (%d)\n", xbr_nsubbands[ch2]);
                return AVERROR_INVALIDDATA;
            }
        }
    }




    if (ff_dca_seek_bits(&s->gb, header_pos + header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of XBR frame header\n");
        return AVERROR_INVALIDDATA;
    }


    for (i = 0, xbr_base_ch = 0; i < xbr_nchsets; i++) {
        header_pos = get_bits_count(&s->gb);

        if (xbr_base_ch + xbr_nchannels[i] <= s->nchannels) {
            int sf, sub_pos;

            for (sf = 0, sub_pos = 0; sf < s->nsubframes; sf++) {
                if ((ret = parse_xbr_subframe(s, xbr_base_ch,
                                              xbr_base_ch + xbr_nchannels[i],
                                              xbr_nsubbands, xbr_transition_mode,
                                              sf, &sub_pos)) < 0)
                    return ret;
            }
        }

        xbr_base_ch += xbr_nchannels[i];

        if (ff_dca_seek_bits(&s->gb, header_pos + xbr_frame_size[i] * 8)) {
            av_log(s->avctx, AV_LOG_ERROR, "Read past end of XBR channel set\n");
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}
