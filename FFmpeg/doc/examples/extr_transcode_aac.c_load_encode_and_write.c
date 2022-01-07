
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int frame_size; } ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_1__ AVFrame ;
typedef int AVFormatContext ;
typedef TYPE_2__ AVCodecContext ;
typedef int AVAudioFifo ;


 int AVERROR_EXIT ;
 int FFMIN (int ,int ) ;
 int const av_audio_fifo_read (int *,void**,int const) ;
 int av_audio_fifo_size (int *) ;
 int av_frame_free (TYPE_1__**) ;
 scalar_t__ encode_audio_frame (TYPE_1__*,int *,TYPE_2__*,int*) ;
 int fprintf (int ,char*) ;
 scalar_t__ init_output_frame (TYPE_1__**,TYPE_2__*,int const) ;
 int stderr ;

__attribute__((used)) static int load_encode_and_write(AVAudioFifo *fifo,
                                 AVFormatContext *output_format_context,
                                 AVCodecContext *output_codec_context)
{

    AVFrame *output_frame;



    const int frame_size = FFMIN(av_audio_fifo_size(fifo),
                                 output_codec_context->frame_size);
    int data_written;


    if (init_output_frame(&output_frame, output_codec_context, frame_size))
        return AVERROR_EXIT;



    if (av_audio_fifo_read(fifo, (void **)output_frame->data, frame_size) < frame_size) {
        fprintf(stderr, "Could not read data from FIFO\n");
        av_frame_free(&output_frame);
        return AVERROR_EXIT;
    }


    if (encode_audio_frame(output_frame, output_format_context,
                           output_codec_context, &data_written)) {
        av_frame_free(&output_frame);
        return AVERROR_EXIT;
    }
    av_frame_free(&output_frame);
    return 0;
}
