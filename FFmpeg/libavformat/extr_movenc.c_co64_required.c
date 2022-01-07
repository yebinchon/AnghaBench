
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int entry; scalar_t__ data_offset; TYPE_1__* cluster; } ;
struct TYPE_4__ {scalar_t__ pos; } ;
typedef TYPE_2__ MOVTrack ;


 scalar_t__ UINT32_MAX ;

__attribute__((used)) static int co64_required(const MOVTrack *track)
{
    if (track->entry > 0 && track->cluster[track->entry - 1].pos + track->data_offset > UINT32_MAX)
        return 1;
    return 0;
}
