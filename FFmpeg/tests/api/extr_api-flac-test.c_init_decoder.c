
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_6__ {void* channel_layout; void* request_channel_layout; int request_sample_fmt; } ;
typedef TYPE_1__ AVCodecContext ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_SAMPLE_FMT_S16 ;
 int ENOMEM ;
 int av_log (TYPE_1__*,int ,char*) ;
 TYPE_1__* avcodec_alloc_context3 (int *) ;
 int avcodec_open2 (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int init_decoder(AVCodec *dec, AVCodecContext **dec_ctx,
                        int64_t ch_layout)
{
    AVCodecContext *ctx;
    int result;

    ctx = avcodec_alloc_context3(dec);
    if (!ctx) {
        av_log(((void*)0), AV_LOG_ERROR , "Can't allocate decoder context\n");
        return AVERROR(ENOMEM);
    }

    ctx->request_sample_fmt = AV_SAMPLE_FMT_S16;

    ctx->request_channel_layout = ch_layout;
    ctx->channel_layout = ch_layout;

    result = avcodec_open2(ctx, dec, ((void*)0));
    if (result < 0) {
        av_log(ctx, AV_LOG_ERROR, "Can't open decoder\n");
        return result;
    }

    *dec_ctx = ctx;
    return 0;
}
