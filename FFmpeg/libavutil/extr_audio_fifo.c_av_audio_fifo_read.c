
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_samples; int sample_size; int nb_buffers; int * buf; } ;
typedef TYPE_1__ AVAudioFifo ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int EINVAL ;
 int FFMIN (int,int) ;
 scalar_t__ av_fifo_generic_read (int ,void*,int,int *) ;

int av_audio_fifo_read(AVAudioFifo *af, void **data, int nb_samples)
{
    int i, size;

    if (nb_samples < 0)
        return AVERROR(EINVAL);
    nb_samples = FFMIN(nb_samples, af->nb_samples);
    if (!nb_samples)
        return 0;

    size = nb_samples * af->sample_size;
    for (i = 0; i < af->nb_buffers; i++) {
        if (av_fifo_generic_read(af->buf[i], data[i], size, ((void*)0)) < 0)
            return AVERROR_BUG;
    }
    af->nb_samples -= nb_samples;

    return nb_samples;
}
