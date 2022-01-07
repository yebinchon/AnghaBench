
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int track_duration; int entry; int timescale; TYPE_1__* cluster; } ;
struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_2__ MOVTrack ;



__attribute__((used)) static unsigned compute_avg_bitrate(MOVTrack *track)
{
    uint64_t size = 0;
    int i;
    if (!track->track_duration)
        return 0;
    for (i = 0; i < track->entry; i++)
        size += track->cluster[i].size;
    return size * 8 * track->timescale / track->track_duration;
}
