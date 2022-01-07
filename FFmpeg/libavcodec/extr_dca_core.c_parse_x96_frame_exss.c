
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x96_rev_no; int x96_nchannels; int nchannels; int avctx; int gb; int x96_crc_present; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DCA_EXSS_CHSETS_MAX ;
 scalar_t__ DCA_SYNCWORD_X96 ;
 int alloc_x96_sample_buffer (TYPE_1__*) ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ ff_dca_check_crc (int ,int *,int,int) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 scalar_t__ get_bits_long (int *,int) ;
 int parse_x96_frame_data (TYPE_1__*,int,int) ;

__attribute__((used)) static int parse_x96_frame_exss(DCACoreDecoder *s)
{
    int x96_frame_size[DCA_EXSS_CHSETS_MAX];
    int x96_nchannels[DCA_EXSS_CHSETS_MAX];
    int x96_nchsets, x96_base_ch;
    int i, ret, header_size, header_pos = get_bits_count(&s->gb);


    if (get_bits_long(&s->gb, 32) != DCA_SYNCWORD_X96) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 sync word\n");
        return AVERROR_INVALIDDATA;
    }


    header_size = get_bits(&s->gb, 6) + 1;


    if (ff_dca_check_crc(s->avctx, &s->gb, header_pos + 32, header_pos + header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 frame header checksum\n");
        return AVERROR_INVALIDDATA;
    }


    s->x96_rev_no = get_bits(&s->gb, 4);
    if (s->x96_rev_no < 1 || s->x96_rev_no > 8) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 revision (%d)\n", s->x96_rev_no);
        return AVERROR_INVALIDDATA;
    }


    s->x96_crc_present = get_bits1(&s->gb);


    x96_nchsets = get_bits(&s->gb, 2) + 1;


    for (i = 0; i < x96_nchsets; i++)
        x96_frame_size[i] = get_bits(&s->gb, 12) + 1;


    for (i = 0; i < x96_nchsets; i++)
        x96_nchannels[i] = get_bits(&s->gb, 3) + 1;




    if (ff_dca_seek_bits(&s->gb, header_pos + header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of X96 frame header\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = alloc_x96_sample_buffer(s)) < 0)
        return ret;


    s->x96_nchannels = 0;
    for (i = 0, x96_base_ch = 0; i < x96_nchsets; i++) {
        header_pos = get_bits_count(&s->gb);

        if (x96_base_ch + x96_nchannels[i] <= s->nchannels) {
            s->x96_nchannels = x96_base_ch + x96_nchannels[i];
            if ((ret = parse_x96_frame_data(s, 1, x96_base_ch)) < 0)
                return ret;
        }

        x96_base_ch += x96_nchannels[i];

        if (ff_dca_seek_bits(&s->gb, header_pos + x96_frame_size[i] * 8)) {
            av_log(s->avctx, AV_LOG_ERROR, "Read past end of X96 channel set\n");
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}
