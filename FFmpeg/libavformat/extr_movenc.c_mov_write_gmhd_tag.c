
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {scalar_t__ tag; TYPE_1__* par; } ;
struct TYPE_5__ {scalar_t__ codec_tag; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 scalar_t__ MKTAG (char,char,char,char) ;
 int avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_tcmi_tag (int *,TYPE_2__*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_gmhd_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "gmhd");
    avio_wb32(pb, 0x18);
    ffio_wfourcc(pb, "gmin");
    avio_wb32(pb, 0);
    avio_wb16(pb, 0x40);
    avio_wb16(pb, 0x8000);
    avio_wb16(pb, 0x8000);
    avio_wb16(pb, 0x8000);
    avio_wb16(pb, 0);
    avio_wb16(pb, 0);







    if (track->tag != MKTAG('c','6','0','8')) {
    avio_wb32(pb, 0x2C);
    ffio_wfourcc(pb, "text");
    avio_wb16(pb, 0x01);
    avio_wb32(pb, 0x00);
    avio_wb32(pb, 0x00);
    avio_wb32(pb, 0x00);
    avio_wb32(pb, 0x01);
    avio_wb32(pb, 0x00);
    avio_wb32(pb, 0x00);
    avio_wb32(pb, 0x00);
    avio_wb32(pb, 0x00004000);
    avio_wb16(pb, 0x0000);
    }

    if (track->par->codec_tag == MKTAG('t','m','c','d')) {
        int64_t tmcd_pos = avio_tell(pb);
        avio_wb32(pb, 0);
        ffio_wfourcc(pb, "tmcd");
        mov_write_tcmi_tag(pb, track);
        update_size(pb, tmcd_pos);
    } else if (track->par->codec_tag == MKTAG('g','p','m','d')) {
        int64_t gpmd_pos = avio_tell(pb);
        avio_wb32(pb, 0);
        ffio_wfourcc(pb, "gpmd");
        avio_wb32(pb, 0);
        update_size(pb, gpmd_pos);
    }
    return update_size(pb, pos);
}
