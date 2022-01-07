
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int sample_fmt; int channels; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 char* av_err2str (int) ;
 int av_freep (int **) ;
 int av_samples_alloc (int **,int *,int ,int,int ,int ) ;
 int ** calloc (int ,int) ;
 int fprintf (int ,char*,...) ;
 int free (int **) ;
 int stderr ;

__attribute__((used)) static int init_converted_samples(uint8_t ***converted_input_samples,
                                  AVCodecContext *output_codec_context,
                                  int frame_size)
{
    int error;





    if (!(*converted_input_samples = calloc(output_codec_context->channels,
                                            sizeof(**converted_input_samples)))) {
        fprintf(stderr, "Could not allocate converted input sample pointers\n");
        return AVERROR(ENOMEM);
    }



    if ((error = av_samples_alloc(*converted_input_samples, ((void*)0),
                                  output_codec_context->channels,
                                  frame_size,
                                  output_codec_context->sample_fmt, 0)) < 0) {
        fprintf(stderr,
                "Could not allocate converted input samples (error '%s')\n",
                av_err2str(error));
        av_freep(&(*converted_input_samples)[0]);
        free(*converted_input_samples);
        return error;
    }
    return 0;
}
