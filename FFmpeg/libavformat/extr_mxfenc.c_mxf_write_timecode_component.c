
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int flags; int start; } ;
struct TYPE_7__ {TYPE_1__ tc; int timecode_base; int track_instance_count; } ;
typedef int MXFPackage ;
typedef TYPE_2__ MXFContext ;
typedef int AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AV_TIMECODE_FLAG_DROPFRAME ;
 int TimecodeComponent ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb64 (int *,int ) ;
 int klv_encode_ber_length (int *,int) ;
 int mxf_write_common_fields (TYPE_3__*,int *) ;
 int mxf_write_local_tag (int *,int,int) ;
 int mxf_write_metadata_key (int *,int) ;
 int mxf_write_uuid (int *,int ,int ) ;

__attribute__((used)) static void mxf_write_timecode_component(AVFormatContext *s, AVStream *st, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;

    mxf_write_metadata_key(pb, 0x011400);
    klv_encode_ber_length(pb, 75);


    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, TimecodeComponent, mxf->track_instance_count);

    mxf_write_common_fields(s, st);


    mxf_write_local_tag(pb, 8, 0x1501);
    avio_wb64(pb, mxf->tc.start);


    mxf_write_local_tag(pb, 2, 0x1502);
    avio_wb16(pb, mxf->timecode_base);


    mxf_write_local_tag(pb, 1, 0x1503);
    avio_w8(pb, !!(mxf->tc.flags & AV_TIMECODE_FLAG_DROPFRAME));
}
