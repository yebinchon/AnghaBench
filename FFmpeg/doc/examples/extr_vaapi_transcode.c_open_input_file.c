
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int get_format; int hw_device_ctx; } ;
struct TYPE_11__ {TYPE_1__** streams; } ;
struct TYPE_10__ {int codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int ENOMEM ;
 int av_buffer_ref (int ) ;
 char* av_err2str (int) ;
 int av_find_best_stream (TYPE_2__*,int ,int,int,int **,int ) ;
 TYPE_3__* avcodec_alloc_context3 (int *) ;
 int avcodec_open2 (TYPE_3__*,int *,int *) ;
 int avcodec_parameters_to_context (TYPE_3__*,int ) ;
 int avformat_find_stream_info (TYPE_2__*,int *) ;
 int avformat_open_input (TYPE_2__**,char const*,int *,int *) ;
 TYPE_3__* decoder_ctx ;
 int fprintf (int ,char*,...) ;
 int get_vaapi_format ;
 int hw_device_ctx ;
 TYPE_2__* ifmt_ctx ;
 int stderr ;
 size_t video_stream ;

__attribute__((used)) static int open_input_file(const char *filename)
{
    int ret;
    AVCodec *decoder = ((void*)0);
    AVStream *video = ((void*)0);

    if ((ret = avformat_open_input(&ifmt_ctx, filename, ((void*)0), ((void*)0))) < 0) {
        fprintf(stderr, "Cannot open input file '%s', Error code: %s\n",
                filename, av_err2str(ret));
        return ret;
    }

    if ((ret = avformat_find_stream_info(ifmt_ctx, ((void*)0))) < 0) {
        fprintf(stderr, "Cannot find input stream information. Error code: %s\n",
                av_err2str(ret));
        return ret;
    }

    ret = av_find_best_stream(ifmt_ctx, AVMEDIA_TYPE_VIDEO, -1, -1, &decoder, 0);
    if (ret < 0) {
        fprintf(stderr, "Cannot find a video stream in the input file. "
                "Error code: %s\n", av_err2str(ret));
        return ret;
    }
    video_stream = ret;

    if (!(decoder_ctx = avcodec_alloc_context3(decoder)))
        return AVERROR(ENOMEM);

    video = ifmt_ctx->streams[video_stream];
    if ((ret = avcodec_parameters_to_context(decoder_ctx, video->codecpar)) < 0) {
        fprintf(stderr, "avcodec_parameters_to_context error. Error code: %s\n",
                av_err2str(ret));
        return ret;
    }

    decoder_ctx->hw_device_ctx = av_buffer_ref(hw_device_ctx);
    if (!decoder_ctx->hw_device_ctx) {
        fprintf(stderr, "A hardware device reference create failed.\n");
        return AVERROR(ENOMEM);
    }
    decoder_ctx->get_format = get_vaapi_format;

    if ((ret = avcodec_open2(decoder_ctx, decoder, ((void*)0))) < 0)
        fprintf(stderr, "Failed to open codec for decoding. Error code: %s\n",
                av_err2str(ret));

    return ret;
}
