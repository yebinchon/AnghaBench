
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sample_size; int nb_buffers; int nb_samples; int * buf; } ;
typedef TYPE_1__ AVAudioFifo ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int EINVAL ;
 int INT_MAX ;
 int av_audio_fifo_realloc (TYPE_1__*,int) ;
 int av_audio_fifo_size (TYPE_1__*) ;
 int av_audio_fifo_space (TYPE_1__*) ;
 int av_fifo_generic_write (int ,void*,int,int *) ;

int av_audio_fifo_write(AVAudioFifo *af, void **data, int nb_samples)
{
    int i, ret, size;


    if (av_audio_fifo_space(af) < nb_samples) {
        int current_size = av_audio_fifo_size(af);

        if (INT_MAX / 2 - current_size < nb_samples)
            return AVERROR(EINVAL);

        if ((ret = av_audio_fifo_realloc(af, 2 * (current_size + nb_samples))) < 0)
            return ret;
    }

    size = nb_samples * af->sample_size;
    for (i = 0; i < af->nb_buffers; i++) {
        ret = av_fifo_generic_write(af->buf[i], data[i], size, ((void*)0));
        if (ret != size)
            return AVERROR_BUG;
    }
    af->nb_samples += nb_samples;

    return nb_samples;
}
