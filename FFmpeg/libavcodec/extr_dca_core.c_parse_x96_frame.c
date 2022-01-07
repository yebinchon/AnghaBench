
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x96_rev_no; int frame_size; int avctx; int gb; int nchannels; int x96_nchannels; scalar_t__ x96_crc_present; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int alloc_x96_sample_buffer (TYPE_1__*) ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int get_bits (int *,int) ;
 int parse_x96_frame_data (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int parse_x96_frame(DCACoreDecoder *s)
{
    int ret;


    s->x96_rev_no = get_bits(&s->gb, 4);
    if (s->x96_rev_no < 1 || s->x96_rev_no > 8) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid X96 revision (%d)\n", s->x96_rev_no);
        return AVERROR_INVALIDDATA;
    }

    s->x96_crc_present = 0;
    s->x96_nchannels = s->nchannels;

    if ((ret = alloc_x96_sample_buffer(s)) < 0)
        return ret;

    if ((ret = parse_x96_frame_data(s, 0, 0)) < 0)
        return ret;


    if (ff_dca_seek_bits(&s->gb, s->frame_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of X96 frame\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
