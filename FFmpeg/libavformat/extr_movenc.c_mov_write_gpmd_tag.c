
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int MOVTrack ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_gpmd_tag(AVIOContext *pb, const MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "gpmd");
    avio_wb32(pb, 0);
    avio_wb16(pb, 0);
    avio_wb16(pb, 1);
    avio_wb32(pb, 0);
    return update_size(pb, pos);
}
