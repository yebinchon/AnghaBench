
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* codecpar; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int first_gop_closed; int p_per_gop; int b_per_i_or_p; } ;
struct TYPE_5__ {scalar_t__ format; scalar_t__ codec_id; } ;
typedef TYPE_2__ GXFStreamContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;


 scalar_t__ AV_CODEC_ID_MPEG1VIDEO ;
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ;
 scalar_t__ AV_PIX_FMT_YUV422P ;
 int avio_wl32 (int *,int) ;

__attribute__((used)) static int gxf_write_umf_media_mpeg(AVIOContext *pb, AVStream *st)
{
    GXFStreamContext *sc = st->priv_data;

    if (st->codecpar->format == AV_PIX_FMT_YUV422P)
        avio_wl32(pb, 2);
    else
        avio_wl32(pb, 1);
    avio_wl32(pb, sc->first_gop_closed == 1);
    avio_wl32(pb, 3);
    avio_wl32(pb, 1);
    avio_wl32(pb, sc->p_per_gop);
    avio_wl32(pb, sc->b_per_i_or_p);
    if (st->codecpar->codec_id == AV_CODEC_ID_MPEG2VIDEO)
        avio_wl32(pb, 2);
    else if (st->codecpar->codec_id == AV_CODEC_ID_MPEG1VIDEO)
        avio_wl32(pb, 1);
    else
        avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    return 32;
}
