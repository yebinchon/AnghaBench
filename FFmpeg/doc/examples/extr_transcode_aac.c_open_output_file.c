
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_20__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_26__ {int * sample_fmts; } ;
struct TYPE_25__ {int flags; int sample_rate; int strict_std_compliance; int bit_rate; int sample_fmt; int channel_layout; int channels; } ;
struct TYPE_24__ {int * pb; TYPE_20__* oformat; int url; } ;
struct TYPE_21__ {int num; int den; } ;
struct TYPE_23__ {int codecpar; TYPE_1__ time_base; } ;
struct TYPE_22__ {int flags; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ AVCodec ;


 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int AVFMT_GLOBALHEADER ;
 int AVIO_FLAG_WRITE ;
 int AV_CODEC_FLAG_GLOBAL_HEADER ;
 int AV_CODEC_ID_AAC ;
 int ENOMEM ;
 int FF_COMPLIANCE_EXPERIMENTAL ;
 int OUTPUT_BIT_RATE ;
 int OUTPUT_CHANNELS ;
 char* av_err2str (int) ;
 int av_get_default_channel_layout (int ) ;
 TYPE_20__* av_guess_format (int *,char const*,int *) ;
 int av_strdup (char const*) ;
 TYPE_4__* avcodec_alloc_context3 (TYPE_5__*) ;
 TYPE_5__* avcodec_find_encoder (int ) ;
 int avcodec_free_context (TYPE_4__**) ;
 int avcodec_open2 (TYPE_4__*,TYPE_5__*,int *) ;
 int avcodec_parameters_from_context (int ,TYPE_4__*) ;
 TYPE_3__* avformat_alloc_context () ;
 int avformat_free_context (TYPE_3__*) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_closep (int **) ;
 int avio_open (int **,char const*,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int open_output_file(const char *filename,
                            AVCodecContext *input_codec_context,
                            AVFormatContext **output_format_context,
                            AVCodecContext **output_codec_context)
{
    AVCodecContext *avctx = ((void*)0);
    AVIOContext *output_io_context = ((void*)0);
    AVStream *stream = ((void*)0);
    AVCodec *output_codec = ((void*)0);
    int error;


    if ((error = avio_open(&output_io_context, filename,
                           AVIO_FLAG_WRITE)) < 0) {
        fprintf(stderr, "Could not open output file '%s' (error '%s')\n",
                filename, av_err2str(error));
        return error;
    }


    if (!(*output_format_context = avformat_alloc_context())) {
        fprintf(stderr, "Could not allocate output format context\n");
        return AVERROR(ENOMEM);
    }


    (*output_format_context)->pb = output_io_context;


    if (!((*output_format_context)->oformat = av_guess_format(((void*)0), filename,
                                                              ((void*)0)))) {
        fprintf(stderr, "Could not find output file format\n");
        goto cleanup;
    }

    if (!((*output_format_context)->url = av_strdup(filename))) {
        fprintf(stderr, "Could not allocate url.\n");
        error = AVERROR(ENOMEM);
        goto cleanup;
    }


    if (!(output_codec = avcodec_find_encoder(AV_CODEC_ID_AAC))) {
        fprintf(stderr, "Could not find an AAC encoder.\n");
        goto cleanup;
    }


    if (!(stream = avformat_new_stream(*output_format_context, ((void*)0)))) {
        fprintf(stderr, "Could not create new stream\n");
        error = AVERROR(ENOMEM);
        goto cleanup;
    }

    avctx = avcodec_alloc_context3(output_codec);
    if (!avctx) {
        fprintf(stderr, "Could not allocate an encoding context\n");
        error = AVERROR(ENOMEM);
        goto cleanup;
    }



    avctx->channels = OUTPUT_CHANNELS;
    avctx->channel_layout = av_get_default_channel_layout(OUTPUT_CHANNELS);
    avctx->sample_rate = input_codec_context->sample_rate;
    avctx->sample_fmt = output_codec->sample_fmts[0];
    avctx->bit_rate = OUTPUT_BIT_RATE;


    avctx->strict_std_compliance = FF_COMPLIANCE_EXPERIMENTAL;


    stream->time_base.den = input_codec_context->sample_rate;
    stream->time_base.num = 1;



    if ((*output_format_context)->oformat->flags & AVFMT_GLOBALHEADER)
        avctx->flags |= AV_CODEC_FLAG_GLOBAL_HEADER;


    if ((error = avcodec_open2(avctx, output_codec, ((void*)0))) < 0) {
        fprintf(stderr, "Could not open output codec (error '%s')\n",
                av_err2str(error));
        goto cleanup;
    }

    error = avcodec_parameters_from_context(stream->codecpar, avctx);
    if (error < 0) {
        fprintf(stderr, "Could not initialize stream parameters\n");
        goto cleanup;
    }


    *output_codec_context = avctx;

    return 0;

cleanup:
    avcodec_free_context(&avctx);
    avio_closep(&(*output_format_context)->pb);
    avformat_free_context(*output_format_context);
    *output_format_context = ((void*)0);
    return error < 0 ? error : AVERROR_EXIT;
}
