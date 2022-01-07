
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int nb_samples; int stride; int planes; int ** data; } ;
typedef TYPE_1__ AudioData ;
typedef int AVAudioFifo ;


 int AVRESAMPLE_MAX_CHANNELS ;
 int av_audio_fifo_write (int *,void**,int) ;

int ff_audio_data_add_to_fifo(AVAudioFifo *af, AudioData *a, int offset,
                              int nb_samples)
{
    uint8_t *offset_data[AVRESAMPLE_MAX_CHANNELS];
    int offset_size, p;

    if (offset >= a->nb_samples)
        return 0;
    offset_size = offset * a->stride;
    for (p = 0; p < a->planes; p++)
        offset_data[p] = a->data[p] + offset_size;

    return av_audio_fifo_write(af, (void **)offset_data, nb_samples);
}
