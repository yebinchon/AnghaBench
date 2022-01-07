
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_samples; int stride; int planes; scalar_t__* data; } ;
typedef TYPE_1__ AudioData ;


 int memmove (scalar_t__,scalar_t__,int) ;

void ff_audio_data_drain(AudioData *a, int nb_samples)
{
    if (a->nb_samples <= nb_samples) {

        a->nb_samples = 0;
    } else {
        int p;
        int move_offset = a->stride * nb_samples;
        int move_size = a->stride * (a->nb_samples - nb_samples);

        for (p = 0; p < a->planes; p++)
            memmove(a->data[p], a->data[p] + move_offset, move_size);

        a->nb_samples -= nb_samples;
    }
}
