
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; int sample_fmt; } ;
typedef TYPE_1__ AVCodecContext ;
typedef int AVAudioFifo ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * av_audio_fifo_alloc (int ,int ,int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int init_fifo(AVAudioFifo **fifo, AVCodecContext *output_codec_context)
{

    if (!(*fifo = av_audio_fifo_alloc(output_codec_context->sample_fmt,
                                      output_codec_context->channels, 1))) {
        fprintf(stderr, "Could not allocate FIFO\n");
        return AVERROR(ENOMEM);
    }
    return 0;
}
