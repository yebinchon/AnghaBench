
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int codec_id; } ;
struct TYPE_11__ {TYPE_1__** streams; } ;
struct TYPE_10__ {TYPE_3__* codecpar; } ;
typedef int AVFrame ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;
typedef int AVCodecContext ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AVERROR_DECODER_NOT_FOUND ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_find_best_stream (TYPE_2__*,int ,int,int,int *,int ) ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_freep (int **) ;
 int av_log (int *,int ,char*) ;
 int * avcodec_alloc_context3 (int *) ;
 int avcodec_close (int *) ;
 int * avcodec_find_decoder (int ) ;
 int avcodec_free_context (int **) ;
 int avcodec_open2 (int *,int *,int *) ;
 int avcodec_parameters_to_context (int *,TYPE_3__*) ;
 int avformat_close_input (TYPE_2__**) ;
 int avformat_find_stream_info (TYPE_2__*,int *) ;
 int avformat_open_input (TYPE_2__**,char const*,int *,int *) ;
 int compute_crc_of_packets (TYPE_2__*,int,int *,int *,int,int,int) ;
 int * crc_array ;
 scalar_t__ number_of_elements ;
 int * pts_array ;
 long read_seek_range (char const*) ;
 scalar_t__ size_of_array ;

__attribute__((used)) static int seek_test(const char *input_filename, const char *start, const char *end)
{
    AVCodec *codec = ((void*)0);
    AVCodecContext *ctx= ((void*)0);
    AVCodecParameters *origin_par = ((void*)0);
    AVFrame *fr = ((void*)0);
    AVFormatContext *fmt_ctx = ((void*)0);
    int video_stream;
    int result;
    int i, j;
    long int start_ts, end_ts;

    size_of_array = 0;
    number_of_elements = 0;
    crc_array = ((void*)0);
    pts_array = ((void*)0);

    result = avformat_open_input(&fmt_ctx, input_filename, ((void*)0), ((void*)0));
    if (result < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't open file\n");
        return result;
    }

    result = avformat_find_stream_info(fmt_ctx, ((void*)0));
    if (result < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't get stream info\n");
        goto end;
    }

    start_ts = read_seek_range(start);
    end_ts = read_seek_range(end);
    if ((start_ts < 0) || (end_ts < 0)) {
        result = -1;
        goto end;
    }


    video_stream = av_find_best_stream(fmt_ctx, AVMEDIA_TYPE_VIDEO, -1, -1, ((void*)0), 0);
    if (video_stream < 0) {
      av_log(((void*)0), AV_LOG_ERROR, "Can't find video stream in input file\n");
      result = video_stream;
      goto end;
    }

    origin_par = fmt_ctx->streams[video_stream]->codecpar;

    codec = avcodec_find_decoder(origin_par->codec_id);
    if (!codec) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't find decoder\n");
        result = AVERROR_DECODER_NOT_FOUND;
        goto end;
    }

    ctx = avcodec_alloc_context3(codec);
    if (!ctx) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't allocate decoder context\n");
        result = AVERROR(ENOMEM);
        goto end;
    }

    result = avcodec_parameters_to_context(ctx, origin_par);
    if (result) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't copy decoder context\n");
        goto end;
    }

    result = avcodec_open2(ctx, codec, ((void*)0));
    if (result < 0) {
        av_log(ctx, AV_LOG_ERROR, "Can't open decoder\n");
        goto end;
    }

    fr = av_frame_alloc();
    if (!fr) {
        av_log(((void*)0), AV_LOG_ERROR, "Can't allocate frame\n");
        result = AVERROR(ENOMEM);
        goto end;
    }

    result = compute_crc_of_packets(fmt_ctx, video_stream, ctx, fr, 0, 0, 1);
    if (result != 0)
        goto end;

    for (i = start_ts; i < end_ts; i += 100) {
        for (j = i + 100; j < end_ts; j += 100) {
            result = compute_crc_of_packets(fmt_ctx, video_stream, ctx, fr, i, j, 0);
            if (result != 0)
                break;
        }
    }

end:
    av_freep(&crc_array);
    av_freep(&pts_array);
    av_frame_free(&fr);
    avcodec_close(ctx);
    avformat_close_input(&fmt_ctx);
    avcodec_free_context(&ctx);
    return result;
}
