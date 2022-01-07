
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int max_packet_size; int timescale; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_rtp_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "rtp ");
    avio_wb32(pb, 0);
    avio_wb16(pb, 0);
    avio_wb16(pb, 1);

    avio_wb16(pb, 1);
    avio_wb16(pb, 1);
    avio_wb32(pb, track->max_packet_size);

    avio_wb32(pb, 12);
    ffio_wfourcc(pb, "tims");
    avio_wb32(pb, track->timescale);

    return update_size(pb, pos);
}
