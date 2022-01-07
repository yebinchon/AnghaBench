
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
 int av_fifo_generic_peek_at (int ,void*,int,int,int *) ;

int av_audio_fifo_peek_at(AVAudioFifo *af, void **data, int nb_samples, int offset)
{
    int i, ret, size;

    if (offset < 0 || offset >= af->nb_samples)
        return AVERROR(EINVAL);
    if (nb_samples < 0)
        return AVERROR(EINVAL);
    nb_samples = FFMIN(nb_samples, af->nb_samples);
    if (!nb_samples)
        return 0;
    if (offset > af->nb_samples - nb_samples)
        return AVERROR(EINVAL);

    offset *= af->sample_size;
    size = nb_samples * af->sample_size;
    for (i = 0; i < af->nb_buffers; i++) {
        if ((ret = av_fifo_generic_peek_at(af->buf[i], data[i], offset, size, ((void*)0))) < 0)
            return AVERROR_BUG;
    }

    return nb_samples;
}
