
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int map_offsets_nb; int * map_offsets; } ;
typedef TYPE_1__ GXFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_LOG_ERROR ;
 int PKT_MAP ;
 int av_log (TYPE_2__*,int ,char*) ;
 int av_reallocp_array (int **,int,int) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int gxf_write_material_data_section (TYPE_2__*) ;
 int gxf_write_packet_header (int *,int ) ;
 int gxf_write_track_description_section (TYPE_2__*) ;
 int updatePacketSize (int *,int ) ;

__attribute__((used)) static int gxf_write_map_packet(AVFormatContext *s, int rewrite)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos = avio_tell(pb);

    if (!rewrite) {
        if (!(gxf->map_offsets_nb % 30)) {
            int err;
            if ((err = av_reallocp_array(&gxf->map_offsets,
                                         gxf->map_offsets_nb + 30,
                                         sizeof(*gxf->map_offsets))) < 0) {
                gxf->map_offsets_nb = 0;
                av_log(s, AV_LOG_ERROR, "could not realloc map offsets\n");
                return err;
            }
        }
        gxf->map_offsets[gxf->map_offsets_nb++] = pos;
    }

    gxf_write_packet_header(pb, PKT_MAP);


    avio_w8(pb, 0xE0);
    avio_w8(pb, 0xFF);

    gxf_write_material_data_section(s);
    gxf_write_track_description_section(s);

    return updatePacketSize(pb, pos);
}
