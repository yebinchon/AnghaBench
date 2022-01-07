
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nb_streams; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int umf_length; int umf_track_offset; int umf_track_size; int umf_media_offset; int umf_media_size; } ;
typedef TYPE_1__ GXFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int avio_wl32 (int *,int) ;

__attribute__((used)) static int gxf_write_umf_payload(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;

    avio_wl32(pb, gxf->umf_length);
    avio_wl32(pb, 3);
    avio_wl32(pb, s->nb_streams+1);
    avio_wl32(pb, gxf->umf_track_offset);
    avio_wl32(pb, gxf->umf_track_size);
    avio_wl32(pb, s->nb_streams+1);
    avio_wl32(pb, gxf->umf_media_offset);
    avio_wl32(pb, gxf->umf_media_size);
    avio_wl32(pb, gxf->umf_length);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    return 48;
}
