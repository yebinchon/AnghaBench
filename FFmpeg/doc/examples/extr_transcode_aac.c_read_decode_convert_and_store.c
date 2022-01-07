
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int nb_samples; scalar_t__ extended_data; } ;
typedef int SwrContext ;
typedef TYPE_1__ AVFrame ;
typedef int AVFormatContext ;
typedef int AVCodecContext ;
typedef int AVAudioFifo ;


 int AVERROR_EXIT ;
 scalar_t__ add_samples_to_fifo (int *,int **,int ) ;
 int av_frame_free (TYPE_1__**) ;
 int av_freep (int **) ;
 scalar_t__ convert_samples (int const**,int **,int ,int *) ;
 scalar_t__ decode_audio_frame (TYPE_1__*,int *,int *,int*,int*) ;
 int free (int **) ;
 scalar_t__ init_converted_samples (int ***,int *,int ) ;
 scalar_t__ init_input_frame (TYPE_1__**) ;

__attribute__((used)) static int read_decode_convert_and_store(AVAudioFifo *fifo,
                                         AVFormatContext *input_format_context,
                                         AVCodecContext *input_codec_context,
                                         AVCodecContext *output_codec_context,
                                         SwrContext *resampler_context,
                                         int *finished)
{

    AVFrame *input_frame = ((void*)0);

    uint8_t **converted_input_samples = ((void*)0);
    int data_present = 0;
    int ret = AVERROR_EXIT;


    if (init_input_frame(&input_frame))
        goto cleanup;

    if (decode_audio_frame(input_frame, input_format_context,
                           input_codec_context, &data_present, finished))
        goto cleanup;



    if (*finished) {
        ret = 0;
        goto cleanup;
    }

    if (data_present) {

        if (init_converted_samples(&converted_input_samples, output_codec_context,
                                   input_frame->nb_samples))
            goto cleanup;



        if (convert_samples((const uint8_t**)input_frame->extended_data, converted_input_samples,
                            input_frame->nb_samples, resampler_context))
            goto cleanup;


        if (add_samples_to_fifo(fifo, converted_input_samples,
                                input_frame->nb_samples))
            goto cleanup;
        ret = 0;
    }
    ret = 0;

cleanup:
    if (converted_input_samples) {
        av_freep(&converted_input_samples[0]);
        free(converted_input_samples);
    }
    av_frame_free(&input_frame);

    return ret;
}
