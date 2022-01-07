
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {scalar_t__ format; } ;
typedef int GXFStreamContext ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;


 scalar_t__ AV_PIX_FMT_YUV420P ;
 int avio_wl32 (int *,int) ;

__attribute__((used)) static int gxf_write_umf_media_dv(AVIOContext *pb, GXFStreamContext *sc, AVStream *st)
{
    int dv_umf_data = 0;

    if (st->codecpar->format == AV_PIX_FMT_YUV420P)
        dv_umf_data |= 0x20;
    avio_wl32(pb, dv_umf_data);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    return 32;
}
