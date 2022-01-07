
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_samples; } ;
typedef TYPE_1__ AVAudioFifo ;



int av_audio_fifo_size(AVAudioFifo *af)
{
    return af->nb_samples;
}
