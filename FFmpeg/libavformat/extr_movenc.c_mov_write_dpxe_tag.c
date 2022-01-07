
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* par; } ;
struct TYPE_4__ {int extradata_size; int* extradata; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int memcmp (int*,char*,int) ;

__attribute__((used)) static int mov_write_dpxe_tag(AVIOContext *pb, MOVTrack *track)
{
    avio_wb32(pb, 12);
    ffio_wfourcc(pb, "DpxE");
    if (track->par->extradata_size >= 12 &&
        !memcmp(&track->par->extradata[4], "DpxE", 4)) {
        avio_wb32(pb, track->par->extradata[11]);
    } else {
        avio_wb32(pb, 1);
    }
    return 0;
}
