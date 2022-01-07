
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int sample_rate; int channel_layout; int sample_fmt; } ;
typedef TYPE_1__ AVCodecContext ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_SAMPLE_FMT_S16 ;
 int ENOMEM ;
 int NAME_BUFF_SIZE ;
 int av_get_channel_layout_string (char*,int,int ,int ) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 TYPE_1__* avcodec_alloc_context3 (int *) ;
 int avcodec_open2 (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int init_encoder(AVCodec *enc, AVCodecContext **enc_ctx,
                        int64_t ch_layout, int sample_rate)
{
    AVCodecContext *ctx;
    int result;
    char name_buff[NAME_BUFF_SIZE];

    av_get_channel_layout_string(name_buff, NAME_BUFF_SIZE, 0, ch_layout);
    av_log(((void*)0), AV_LOG_INFO, "channel layout: %s, sample rate: %i\n", name_buff, sample_rate);

    ctx = avcodec_alloc_context3(enc);
    if (!ctx) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't allocate encoder context\n");
        return AVERROR(ENOMEM);
    }

    ctx->sample_fmt = AV_SAMPLE_FMT_S16;
    ctx->sample_rate = sample_rate;
    ctx->channel_layout = ch_layout;

    result = avcodec_open2(ctx, enc, ((void*)0));
    if (result < 0) {
        av_log(ctx, AV_LOG_ERROR, "Can't open encoder\n");
        return result;
    }

    *enc_ctx = ctx;
    return 0;
}
