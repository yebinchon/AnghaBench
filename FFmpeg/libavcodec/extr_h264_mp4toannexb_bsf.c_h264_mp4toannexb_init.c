
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* par_in; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int length_size; int new_idr; int extradata_parsed; scalar_t__ idr_pps_seen; scalar_t__ idr_sps_seen; } ;
struct TYPE_7__ {int extradata_size; int extradata; } ;
typedef TYPE_2__ H264BSFContext ;
typedef TYPE_3__ AVBSFContext ;


 int AVERROR_INVALIDDATA ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_RB24 (int ) ;
 int AV_RB32 (int ) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int h264_extradata_to_annexb (TYPE_3__*,int ) ;

__attribute__((used)) static int h264_mp4toannexb_init(AVBSFContext *ctx)
{
    H264BSFContext *s = ctx->priv_data;
    int extra_size = ctx->par_in->extradata_size;
    int ret;


    if (!extra_size ||
        (extra_size >= 3 && AV_RB24(ctx->par_in->extradata) == 1) ||
        (extra_size >= 4 && AV_RB32(ctx->par_in->extradata) == 1)) {
        av_log(ctx, AV_LOG_VERBOSE,
               "The input looks like it is Annex B already\n");
    } else if (extra_size >= 6) {
        ret = h264_extradata_to_annexb(ctx, AV_INPUT_BUFFER_PADDING_SIZE);
        if (ret < 0)
            return ret;

        s->length_size = ret;
        s->new_idr = 1;
        s->idr_sps_seen = 0;
        s->idr_pps_seen = 0;
        s->extradata_parsed = 1;
    } else {
        av_log(ctx, AV_LOG_ERROR, "Invalid extradata size: %d\n", extra_size);
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
