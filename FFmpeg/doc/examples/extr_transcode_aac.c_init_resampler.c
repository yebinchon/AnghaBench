
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sample_rate; int sample_fmt; int channels; } ;
typedef int SwrContext ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int av_get_default_channel_layout (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int * swr_alloc_set_opts (int *,int ,int ,scalar_t__,int ,int ,scalar_t__,int ,int *) ;
 int swr_free (int **) ;
 int swr_init (int *) ;

__attribute__((used)) static int init_resampler(AVCodecContext *input_codec_context,
                          AVCodecContext *output_codec_context,
                          SwrContext **resample_context)
{
        int error;
        *resample_context = swr_alloc_set_opts(((void*)0),
                                              av_get_default_channel_layout(output_codec_context->channels),
                                              output_codec_context->sample_fmt,
                                              output_codec_context->sample_rate,
                                              av_get_default_channel_layout(input_codec_context->channels),
                                              input_codec_context->sample_fmt,
                                              input_codec_context->sample_rate,
                                              0, ((void*)0));
        if (!*resample_context) {
            fprintf(stderr, "Could not allocate resample context\n");
            return AVERROR(ENOMEM);
        }





        av_assert0(output_codec_context->sample_rate == input_codec_context->sample_rate);


        if ((error = swr_init(*resample_context)) < 0) {
            fprintf(stderr, "Could not open resample context\n");
            swr_free(resample_context);
            return error;
        }
    return 0;
}
