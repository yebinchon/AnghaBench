
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int den; int num; } ;
struct TYPE_5__ {int* audio_samples_dist; TYPE_1__ time_base; } ;
typedef TYPE_2__ AVDVProfile ;


 int av_assert0 (int) ;

__attribute__((used)) static int dv_audio_frame_size(const AVDVProfile* sys, int frame, int sample_rate)
{
    if ((sys->time_base.den == 25 || sys->time_base.den == 50) && sys->time_base.num == 1) {
        if (sample_rate == 32000) return 1280;
        else if (sample_rate == 44100) return 1764;
        else return 1920;
    }

    av_assert0(sample_rate == 48000);

    return sys->audio_samples_dist[frame % (sizeof(sys->audio_samples_dist) /
                                            sizeof(sys->audio_samples_dist[0]))];
}
