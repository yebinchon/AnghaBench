
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_10__ {int * pb; TYPE_3__* priv_data; } ;
struct TYPE_8__ {int hh; int mm; int ss; int ff; int drop; int color; } ;
struct TYPE_7__ {int den; } ;
struct TYPE_9__ {int nb_fields; int flags; int audio_tracks; int mpeg_tracks; TYPE_2__ tc; TYPE_1__ time_base; } ;
typedef TYPE_3__ GXFContext ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int GXF_TIMECODE (int ,int ,int,int,int,int) ;
 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int) ;
 int avio_wl64 (int *,int ) ;
 int ff_parse_creation_time_metadata (TYPE_4__*,int *,int) ;

__attribute__((used)) static int gxf_write_umf_material_description(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int timecode_base = gxf->time_base.den == 60000 ? 60 : 50;
    int64_t timestamp = 0;
    uint64_t nb_fields;
    uint32_t timecode_in;
    uint32_t timecode_out;

    ff_parse_creation_time_metadata(s, &timestamp, 1);

    timecode_in = GXF_TIMECODE(gxf->tc.color, gxf->tc.drop,
                               gxf->tc.hh, gxf->tc.mm,
                               gxf->tc.ss, gxf->tc.ff);

    nb_fields = gxf->nb_fields +
                gxf->tc.hh * (timecode_base * 3600) +
                gxf->tc.mm * (timecode_base * 60) +
                gxf->tc.ss * timecode_base +
                gxf->tc.ff;

    timecode_out = GXF_TIMECODE(gxf->tc.color, gxf->tc.drop,
                                nb_fields / (timecode_base * 3600) % 24,
                                nb_fields / (timecode_base * 60) % 60,
                                nb_fields / timecode_base % 60,
                                nb_fields % timecode_base);

    avio_wl32(pb, gxf->flags);
    avio_wl32(pb, gxf->nb_fields);
    avio_wl32(pb, gxf->nb_fields);
    avio_wl32(pb, 0);
    avio_wl32(pb, gxf->nb_fields);
    avio_wl32(pb, timecode_in);
    avio_wl32(pb, timecode_out);
    avio_wl64(pb, timestamp);
    avio_wl64(pb, timestamp);
    avio_wl16(pb, 0);
    avio_wl16(pb, 0);
    avio_wl16(pb, gxf->audio_tracks);
    avio_wl16(pb, 1);
    avio_wl16(pb, 0);
    avio_wl16(pb, gxf->mpeg_tracks);
    return 48;
}
