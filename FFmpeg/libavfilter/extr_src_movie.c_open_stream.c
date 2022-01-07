
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int codec_id; } ;
struct TYPE_10__ {int refcounted_frames; int thread_count; } ;
struct TYPE_9__ {TYPE_4__* codec_ctx; TYPE_1__* st; } ;
struct TYPE_8__ {TYPE_5__* codecpar; } ;
typedef TYPE_2__ MovieStream ;
typedef int AVFilterContext ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_log (int *,int ,char*) ;
 TYPE_4__* avcodec_alloc_context3 (int *) ;
 int * avcodec_find_decoder (int ) ;
 int avcodec_open2 (TYPE_4__*,int *,int *) ;
 int avcodec_parameters_to_context (TYPE_4__*,TYPE_5__*) ;
 int ff_filter_get_nb_threads (int *) ;

__attribute__((used)) static int open_stream(AVFilterContext *ctx, MovieStream *st)
{
    AVCodec *codec;
    int ret;

    codec = avcodec_find_decoder(st->st->codecpar->codec_id);
    if (!codec) {
        av_log(ctx, AV_LOG_ERROR, "Failed to find any codec\n");
        return AVERROR(EINVAL);
    }

    st->codec_ctx = avcodec_alloc_context3(codec);
    if (!st->codec_ctx)
        return AVERROR(ENOMEM);

    ret = avcodec_parameters_to_context(st->codec_ctx, st->st->codecpar);
    if (ret < 0)
        return ret;

    st->codec_ctx->refcounted_frames = 1;
    st->codec_ctx->thread_count = ff_filter_get_nb_threads(ctx);

    if ((ret = avcodec_open2(st->codec_ctx, codec, ((void*)0))) < 0) {
        av_log(ctx, AV_LOG_ERROR, "Failed to open codec\n");
        return ret;
    }

    return 0;
}
