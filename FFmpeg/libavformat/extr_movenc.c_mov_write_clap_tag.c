
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; TYPE_1__* par; } ;
struct TYPE_4__ {int width; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_clap_tag(AVIOContext *pb, MOVTrack *track)
{
    avio_wb32(pb, 40);
    ffio_wfourcc(pb, "clap");
    avio_wb32(pb, track->par->width);
    avio_wb32(pb, 1);
    avio_wb32(pb, track->height);
    avio_wb32(pb, 1);
    avio_wb32(pb, 0);
    avio_wb32(pb, 1);
    avio_wb32(pb, 0);
    avio_wb32(pb, 1);
    return 40;
}
