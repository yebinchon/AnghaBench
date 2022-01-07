
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 scalar_t__ MODE_MOV ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_amr_tag(AVIOContext *pb, MOVTrack *track)
{
    avio_wb32(pb, 0x11);
    if (track->mode == MODE_MOV) ffio_wfourcc(pb, "samr");
    else ffio_wfourcc(pb, "damr");
    ffio_wfourcc(pb, "FFMP");
    avio_w8(pb, 0);

    avio_wb16(pb, 0x81FF);
    avio_w8(pb, 0x00);
    avio_w8(pb, 0x01);
    return 0x11;
}
