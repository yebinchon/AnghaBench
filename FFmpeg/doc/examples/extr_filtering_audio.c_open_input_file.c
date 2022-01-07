
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** streams; } ;
struct TYPE_6__ {int codecpar; } ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 size_t audio_stream_index ;
 int av_find_best_stream (TYPE_2__*,int ,int,int,int **,int ) ;
 int av_log (int *,int ,char*) ;
 int avcodec_alloc_context3 (int *) ;
 int avcodec_open2 (int ,int *,int *) ;
 int avcodec_parameters_to_context (int ,int ) ;
 int avformat_find_stream_info (TYPE_2__*,int *) ;
 int avformat_open_input (TYPE_2__**,char const*,int *,int *) ;
 int dec_ctx ;
 TYPE_2__* fmt_ctx ;

__attribute__((used)) static int open_input_file(const char *filename)
{
    int ret;
    AVCodec *dec;

    if ((ret = avformat_open_input(&fmt_ctx, filename, ((void*)0), ((void*)0))) < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot open input file\n");
        return ret;
    }

    if ((ret = avformat_find_stream_info(fmt_ctx, ((void*)0))) < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot find stream information\n");
        return ret;
    }


    ret = av_find_best_stream(fmt_ctx, AVMEDIA_TYPE_AUDIO, -1, -1, &dec, 0);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot find an audio stream in the input file\n");
        return ret;
    }
    audio_stream_index = ret;


    dec_ctx = avcodec_alloc_context3(dec);
    if (!dec_ctx)
        return AVERROR(ENOMEM);
    avcodec_parameters_to_context(dec_ctx, fmt_ctx->streams[audio_stream_index]->codecpar);


    if ((ret = avcodec_open2(dec_ctx, dec, ((void*)0))) < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot open audio decoder\n");
        return ret;
    }

    return 0;
}
