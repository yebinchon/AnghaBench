
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int track_id; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_trex_tag(AVIOContext *pb, MOVTrack *track)
{
    avio_wb32(pb, 0x20);
    ffio_wfourcc(pb, "trex");
    avio_wb32(pb, 0);
    avio_wb32(pb, track->track_id);
    avio_wb32(pb, 1);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    return 0;
}
