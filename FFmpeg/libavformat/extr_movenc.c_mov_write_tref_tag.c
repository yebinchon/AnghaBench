
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tref_id; int tref_tag; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int avio_wl32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_tref_tag(AVIOContext *pb, MOVTrack *track)
{
    avio_wb32(pb, 20);
    ffio_wfourcc(pb, "tref");
    avio_wb32(pb, 12);
    avio_wl32(pb, track->tref_tag);
    avio_wb32(pb, track->tref_id);
    return 20;
}
