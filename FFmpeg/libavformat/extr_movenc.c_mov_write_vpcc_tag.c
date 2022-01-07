
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int par; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int ff_isom_write_vpcc (int *,int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_vpcc_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "vpcC");
    avio_w8(pb, 1);
    avio_wb24(pb, 0);
    ff_isom_write_vpcc(s, pb, track->par);
    return update_size(pb, pos);
}
