
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int sample_rate; int frame_size; int channels; int sample_fmt; int channel_layout; TYPE_1__* codec; } ;
struct TYPE_10__ {int tincr; int tincr2; int swr_ctx; TYPE_2__* st; void* tmp_frame; void* frame; scalar_t__ t; TYPE_4__* enc; } ;
struct TYPE_9__ {int codecpar; } ;
struct TYPE_8__ {int capabilities; } ;
typedef TYPE_3__ OutputStream ;
typedef int AVFormatContext ;
typedef int AVDictionary ;
typedef TYPE_4__ AVCodecContext ;
typedef int AVCodec ;


 int AV_CODEC_CAP_VARIABLE_FRAME_SIZE ;
 int AV_SAMPLE_FMT_S16 ;
 int M_PI ;
 void* alloc_audio_frame (int ,int ,int,int) ;
 int av_dict_copy (int **,int *,int ) ;
 int av_dict_free (int **) ;
 char* av_err2str (int) ;
 int av_opt_set_int (int ,char*,int,int ) ;
 int av_opt_set_sample_fmt (int ,char*,int ,int ) ;
 int avcodec_open2 (TYPE_4__*,int *,int **) ;
 int avcodec_parameters_from_context (int ,TYPE_4__*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int swr_alloc () ;
 int swr_init (int ) ;

__attribute__((used)) static void open_audio(AVFormatContext *oc, AVCodec *codec, OutputStream *ost, AVDictionary *opt_arg)
{
    AVCodecContext *c;
    int nb_samples;
    int ret;
    AVDictionary *opt = ((void*)0);

    c = ost->enc;


    av_dict_copy(&opt, opt_arg, 0);
    ret = avcodec_open2(c, codec, &opt);
    av_dict_free(&opt);
    if (ret < 0) {
        fprintf(stderr, "Could not open audio codec: %s\n", av_err2str(ret));
        exit(1);
    }


    ost->t = 0;
    ost->tincr = 2 * M_PI * 110.0 / c->sample_rate;

    ost->tincr2 = 2 * M_PI * 110.0 / c->sample_rate / c->sample_rate;

    if (c->codec->capabilities & AV_CODEC_CAP_VARIABLE_FRAME_SIZE)
        nb_samples = 10000;
    else
        nb_samples = c->frame_size;

    ost->frame = alloc_audio_frame(c->sample_fmt, c->channel_layout,
                                       c->sample_rate, nb_samples);
    ost->tmp_frame = alloc_audio_frame(AV_SAMPLE_FMT_S16, c->channel_layout,
                                       c->sample_rate, nb_samples);


    ret = avcodec_parameters_from_context(ost->st->codecpar, c);
    if (ret < 0) {
        fprintf(stderr, "Could not copy the stream parameters\n");
        exit(1);
    }


        ost->swr_ctx = swr_alloc();
        if (!ost->swr_ctx) {
            fprintf(stderr, "Could not allocate resampler context\n");
            exit(1);
        }


        av_opt_set_int (ost->swr_ctx, "in_channel_count", c->channels, 0);
        av_opt_set_int (ost->swr_ctx, "in_sample_rate", c->sample_rate, 0);
        av_opt_set_sample_fmt(ost->swr_ctx, "in_sample_fmt", AV_SAMPLE_FMT_S16, 0);
        av_opt_set_int (ost->swr_ctx, "out_channel_count", c->channels, 0);
        av_opt_set_int (ost->swr_ctx, "out_sample_rate", c->sample_rate, 0);
        av_opt_set_sample_fmt(ost->swr_ctx, "out_sample_fmt", c->sample_fmt, 0);


        if ((ret = swr_init(ost->swr_ctx)) < 0) {
            fprintf(stderr, "Failed to initialize the resampling context\n");
            exit(1);
        }
}
