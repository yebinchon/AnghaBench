
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int allocated_channels; int channels; int planes; scalar_t__ is_planar; } ;
typedef TYPE_1__ AudioData ;


 int AVERROR (int ) ;
 int AVRESAMPLE_MAX_CHANNELS ;
 int EINVAL ;
 int calc_ptr_alignment (TYPE_1__*) ;

int ff_audio_data_set_channels(AudioData *a, int channels)
{
    if (channels < 1 || channels > AVRESAMPLE_MAX_CHANNELS ||
        channels > a->allocated_channels)
        return AVERROR(EINVAL);

    a->channels = channels;
    a->planes = a->is_planar ? channels : 1;

    calc_ptr_alignment(a);

    return 0;
}
