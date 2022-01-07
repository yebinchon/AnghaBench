
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef enum MXFMetadataSetType { ____Placeholder_MXFMetadataSetType } MXFMetadataSetType ;
struct TYPE_14__ {TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_13__ {scalar_t__ buf_ptr; } ;
struct TYPE_12__ {int track_instance_count; int * timecode_track; } ;
typedef int MXFPackage ;
typedef TYPE_1__ MXFContext ;
typedef int AVStream ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int PRINT_KEY (TYPE_3__*,char*,scalar_t__) ;
 int Sequence ;
 int SourceClip ;
 int TimecodeComponent ;
 int klv_encode_ber_length (TYPE_2__*,int) ;
 int mxf_write_common_fields (TYPE_3__*,int *) ;
 int mxf_write_local_tag (TYPE_2__*,int,int) ;
 int mxf_write_metadata_key (TYPE_2__*,int) ;
 int mxf_write_refs_count (TYPE_2__*,int) ;
 int mxf_write_uuid (TYPE_2__*,int,int ) ;

__attribute__((used)) static void mxf_write_sequence(AVFormatContext *s, AVStream *st, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    enum MXFMetadataSetType component;

    mxf_write_metadata_key(pb, 0x010f00);
    PRINT_KEY(s, "sequence key", pb->buf_ptr - 16);
    klv_encode_ber_length(pb, 80);

    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, Sequence, mxf->track_instance_count);

    PRINT_KEY(s, "sequence uid", pb->buf_ptr - 16);
    mxf_write_common_fields(s, st);


    mxf_write_local_tag(pb, 16 + 8, 0x1001);
    mxf_write_refs_count(pb, 1);
    if (st == mxf->timecode_track)
        component = TimecodeComponent;
    else
        component = SourceClip;

    mxf_write_uuid(pb, component, mxf->track_instance_count);
}
