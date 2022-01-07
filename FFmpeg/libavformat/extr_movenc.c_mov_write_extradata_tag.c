
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* par; } ;
struct TYPE_4__ {int extradata_size; int extradata; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int avio_write (int *,int ,int) ;

__attribute__((used)) static int mov_write_extradata_tag(AVIOContext *pb, MOVTrack *track)
{
    avio_write(pb, track->par->extradata, track->par->extradata_size);
    return track->par->extradata_size;
}
