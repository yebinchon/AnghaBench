
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entry; int audio_vbr; } ;
typedef TYPE_1__ MOVTrack ;


 int get_cluster_duration (TYPE_1__*,int) ;

__attribute__((used)) static int get_samples_per_packet(MOVTrack *track)
{
    int i, first_duration;




    if (!track->audio_vbr)
        return 1;


    if (!track->entry)
        return 0;
    first_duration = get_cluster_duration(track, 0);
    for (i = 1; i < track->entry; i++) {
        if (get_cluster_duration(track, i) != first_duration)
            return 0;
    }
    return first_duration;
}
