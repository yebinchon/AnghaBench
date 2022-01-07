
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_9__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {void* umf_start_offset; void* umf_length; int umf_media_size; int umf_track_size; } ;
typedef TYPE_1__ GXFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int PKT_UMF ;
 void* avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,void*) ;
 int gxf_write_packet_header (int *,int ) ;
 int gxf_write_umf_material_description (TYPE_2__*) ;
 int gxf_write_umf_media_description (TYPE_2__*) ;
 int gxf_write_umf_payload (TYPE_2__*) ;
 int gxf_write_umf_track_description (TYPE_2__*) ;
 int updatePacketSize (int *,void*) ;

__attribute__((used)) static int gxf_write_umf_packet(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos = avio_tell(pb);

    gxf_write_packet_header(pb, PKT_UMF);


    avio_w8(pb, 3);
    avio_wb32(pb, gxf->umf_length);

    gxf->umf_start_offset = avio_tell(pb);
    gxf_write_umf_payload(s);
    gxf_write_umf_material_description(s);
    gxf->umf_track_size = gxf_write_umf_track_description(s);
    gxf->umf_media_size = gxf_write_umf_media_description(s);
    gxf->umf_length = avio_tell(pb) - gxf->umf_start_offset;
    return updatePacketSize(pb, pos);
}
