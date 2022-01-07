
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int nb_fields; int* flt_entries; } ;
typedef TYPE_1__ GXFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int PKT_FLT ;
 int avio_tell (int *) ;
 int avio_wl32 (int *,int) ;
 int gxf_write_packet_header (int *,int ) ;
 int updatePacketSize (int *,int ) ;

__attribute__((used)) static int gxf_write_flt_packet(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos = avio_tell(pb);
    int fields_per_flt = (gxf->nb_fields+1) / 1000 + 1;
    int flt_entries = gxf->nb_fields / fields_per_flt;
    int i = 0;

    gxf_write_packet_header(pb, PKT_FLT);

    avio_wl32(pb, fields_per_flt);
    avio_wl32(pb, flt_entries);

    if (gxf->flt_entries) {
        for (i = 0; i < flt_entries; i++)
            avio_wl32(pb, gxf->flt_entries[(i*fields_per_flt)>>1]);
    }

    for (; i < 1000; i++)
        avio_wl32(pb, 0);

    return updatePacketSize(pb, pos);
}
