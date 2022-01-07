
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_16__ {int codec_id; } ;
struct TYPE_15__ {TYPE_1__** streams; } ;
struct TYPE_14__ {int width; int height; int format; int linesize; scalar_t__ data; } ;
struct TYPE_13__ {TYPE_4__* codecpar; } ;
typedef int AVPacket ;
typedef int AVInputFormat ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFormatContext ;
typedef int AVDictionary ;
typedef TYPE_4__ AVCodecParameters ;
typedef int AVCodecContext ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int * av_find_input_format (char*) ;
 TYPE_2__* av_frame_alloc () ;
 int av_frame_free (TYPE_2__**) ;
 int av_image_alloc (int **,int*,int,int,int,int) ;
 int av_image_copy (int **,int*,int const**,int ,int,int,int) ;
 int av_init_packet (int *) ;
 int av_log (void*,int ,char*,...) ;
 int av_packet_unref (int *) ;
 int av_read_frame (TYPE_3__*,int *) ;
 int * avcodec_alloc_context3 (int *) ;
 int avcodec_decode_video2 (int *,TYPE_2__*,int*,int *) ;
 int * avcodec_find_decoder (int ) ;
 int avcodec_free_context (int **) ;
 int avcodec_open2 (int *,int *,int **) ;
 int avcodec_parameters_to_context (int *,TYPE_4__*) ;
 int avformat_close_input (TYPE_3__**) ;
 int avformat_find_stream_info (TYPE_3__*,int *) ;
 int avformat_open_input (TYPE_3__**,char const*,int *,int *) ;

int ff_load_image(uint8_t *data[4], int linesize[4],
                  int *w, int *h, enum AVPixelFormat *pix_fmt,
                  const char *filename, void *log_ctx)
{
    AVInputFormat *iformat = ((void*)0);
    AVFormatContext *format_ctx = ((void*)0);
    AVCodec *codec;
    AVCodecContext *codec_ctx;
    AVCodecParameters *par;
    AVFrame *frame;
    int frame_decoded, ret = 0;
    AVPacket pkt;
    AVDictionary *opt=((void*)0);

    av_init_packet(&pkt);

    iformat = av_find_input_format("image2pipe");
    if ((ret = avformat_open_input(&format_ctx, filename, iformat, ((void*)0))) < 0) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Failed to open input file '%s'\n", filename);
        return ret;
    }

    if ((ret = avformat_find_stream_info(format_ctx, ((void*)0))) < 0) {
        av_log(log_ctx, AV_LOG_ERROR, "Find stream info failed\n");
        return ret;
    }

    par = format_ctx->streams[0]->codecpar;
    codec = avcodec_find_decoder(par->codec_id);
    if (!codec) {
        av_log(log_ctx, AV_LOG_ERROR, "Failed to find codec\n");
        ret = AVERROR(EINVAL);
        goto end;
    }

    codec_ctx = avcodec_alloc_context3(codec);
    if (!codec_ctx) {
        av_log(log_ctx, AV_LOG_ERROR, "Failed to alloc video decoder context\n");
        ret = AVERROR(ENOMEM);
        goto end;
    }

    ret = avcodec_parameters_to_context(codec_ctx, par);
    if (ret < 0) {
        av_log(log_ctx, AV_LOG_ERROR, "Failed to copy codec parameters to decoder context\n");
        goto end;
    }

    av_dict_set(&opt, "thread_type", "slice", 0);
    if ((ret = avcodec_open2(codec_ctx, codec, &opt)) < 0) {
        av_log(log_ctx, AV_LOG_ERROR, "Failed to open codec\n");
        goto end;
    }

    if (!(frame = av_frame_alloc()) ) {
        av_log(log_ctx, AV_LOG_ERROR, "Failed to alloc frame\n");
        ret = AVERROR(ENOMEM);
        goto end;
    }

    ret = av_read_frame(format_ctx, &pkt);
    if (ret < 0) {
        av_log(log_ctx, AV_LOG_ERROR, "Failed to read frame from file\n");
        goto end;
    }

    ret = avcodec_decode_video2(codec_ctx, frame, &frame_decoded, &pkt);
    if (ret < 0 || !frame_decoded) {
        av_log(log_ctx, AV_LOG_ERROR, "Failed to decode image from file\n");
        if (ret >= 0)
            ret = -1;
        goto end;
    }

    *w = frame->width;
    *h = frame->height;
    *pix_fmt = frame->format;

    if ((ret = av_image_alloc(data, linesize, *w, *h, *pix_fmt, 16)) < 0)
        goto end;
    ret = 0;

    av_image_copy(data, linesize, (const uint8_t **)frame->data, frame->linesize, *pix_fmt, *w, *h);

end:
    av_packet_unref(&pkt);
    avcodec_free_context(&codec_ctx);
    avformat_close_input(&format_ctx);
    av_frame_free(&frame);
    av_dict_free(&opt);

    if (ret < 0)
        av_log(log_ctx, AV_LOG_ERROR, "Error loading image file '%s'\n", filename);
    return ret;
}
