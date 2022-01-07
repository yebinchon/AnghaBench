
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_samples; int sample_size; int nb_buffers; int * buf; } ;
typedef TYPE_1__ AVAudioFifo ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FFMIN (int,int) ;
 int av_fifo_drain (int ,int) ;

int av_audio_fifo_drain(AVAudioFifo *af, int nb_samples)
{
    int i, size;

    if (nb_samples < 0)
        return AVERROR(EINVAL);
    nb_samples = FFMIN(nb_samples, af->nb_samples);

    if (nb_samples) {
        size = nb_samples * af->sample_size;
        for (i = 0; i < af->nb_buffers; i++)
            av_fifo_drain(af->buf[i], size);
        af->nb_samples -= nb_samples;
    }
    return 0;
}
