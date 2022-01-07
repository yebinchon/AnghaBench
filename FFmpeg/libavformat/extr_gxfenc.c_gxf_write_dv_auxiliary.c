
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {scalar_t__ format; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;


 scalar_t__ AV_PIX_FMT_YUV420P ;
 int TRACK_AUX ;
 int avio_w8 (int *,int) ;
 int avio_wl64 (int *,int) ;

__attribute__((used)) static int gxf_write_dv_auxiliary(AVIOContext *pb, AVStream *st)
{
    int64_t track_aux_data = 0;

    avio_w8(pb, TRACK_AUX);
    avio_w8(pb, 8);
    if (st->codecpar->format == AV_PIX_FMT_YUV420P)
        track_aux_data |= 0x01;
    track_aux_data |= 0x40000000;
    avio_wl64(pb, track_aux_data);
    return 8;
}
