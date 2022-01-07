
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ch_mask; int frame_size; int avctx; int gb; int nchannels; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DCA_SPEAKER_MASK_Cs ;
 int HEADER_XCH ;
 int av_log (int ,int ,char*) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int parse_frame_data (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int parse_xch_frame(DCACoreDecoder *s)
{
    int ret;

    if (s->ch_mask & DCA_SPEAKER_MASK_Cs) {
        av_log(s->avctx, AV_LOG_ERROR, "XCH with Cs speaker already present\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = parse_frame_data(s, HEADER_XCH, s->nchannels)) < 0)
        return ret;


    if (ff_dca_seek_bits(&s->gb, s->frame_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of XCH frame\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
