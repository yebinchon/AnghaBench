
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* max_persistent; scalar_t__* nb_frames_max_display; scalar_t__ persistent_max_frames; } ;
typedef TYPE_1__ ShowVolumeContext ;



__attribute__((used)) static inline void calc_persistent_max(ShowVolumeContext *s, float max, int channel)
{

    if ((max >= s->max_persistent[channel]) || (s->nb_frames_max_display[channel] >= s->persistent_max_frames)) {
        s->max_persistent[channel] = max;
        s->nb_frames_max_display[channel] = 0;
    } else {
        s->nb_frames_max_display[channel] += 1;
    }
}
