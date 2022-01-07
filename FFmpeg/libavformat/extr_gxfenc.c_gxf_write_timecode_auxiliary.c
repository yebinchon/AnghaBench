
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ff; int ss; int mm; int hh; int drop; int color; } ;
struct TYPE_5__ {TYPE_1__ tc; } ;
typedef TYPE_2__ GXFContext ;
typedef int AVIOContext ;


 int GXF_TIMECODE (int ,int ,int ,int ,int ,int ) ;
 int TRACK_AUX ;
 int avio_w8 (int *,int) ;
 int avio_wl32 (int *,int ) ;

__attribute__((used)) static int gxf_write_timecode_auxiliary(AVIOContext *pb, GXFContext *gxf)
{
    uint32_t timecode = GXF_TIMECODE(gxf->tc.color, gxf->tc.drop,
                                     gxf->tc.hh, gxf->tc.mm,
                                     gxf->tc.ss, gxf->tc.ff);

    avio_w8(pb, TRACK_AUX);
    avio_w8(pb, 8);
    avio_wl32(pb, timecode);

    avio_wl32(pb, 0);
    return 8;
}
