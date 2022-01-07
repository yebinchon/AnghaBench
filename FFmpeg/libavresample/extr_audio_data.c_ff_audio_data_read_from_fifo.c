
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nb_samples; scalar_t__ data; scalar_t__ read_only; } ;
typedef TYPE_1__ AudioData ;
typedef int AVAudioFifo ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_audio_fifo_read (int *,void**,int) ;
 int ff_audio_data_realloc (TYPE_1__*,int) ;

int ff_audio_data_read_from_fifo(AVAudioFifo *af, AudioData *a, int nb_samples)
{
    int ret;

    if (a->read_only)
        return AVERROR(EINVAL);

    ret = ff_audio_data_realloc(a, nb_samples);
    if (ret < 0)
        return ret;

    ret = av_audio_fifo_read(af, (void **)a->data, nb_samples);
    if (ret >= 0)
        a->nb_samples = ret;
    return ret;
}
