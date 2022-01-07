
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocated_samples; int nb_samples; } ;
typedef TYPE_1__ AVAudioFifo ;



int av_audio_fifo_space(AVAudioFifo *af)
{
    return af->allocated_samples - af->nb_samples;
}
