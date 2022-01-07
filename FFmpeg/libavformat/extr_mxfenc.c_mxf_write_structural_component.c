
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_25__ {TYPE_5__* pb; TYPE_3__* priv_data; } ;
struct TYPE_24__ {scalar_t__ buf_ptr; } ;
struct TYPE_23__ {scalar_t__ index; } ;
struct TYPE_22__ {int track_instance_count; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_1__* ref; } ;
struct TYPE_20__ {int instance; } ;
typedef TYPE_2__ MXFPackage ;
typedef TYPE_3__ MXFContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int PRINT_KEY (TYPE_6__*,char*,scalar_t__) ;
 int SourceClip ;
 scalar_t__ SourcePackage ;
 int avio_wb32 (TYPE_5__*,scalar_t__) ;
 int avio_wb64 (TYPE_5__*,int ) ;
 int klv_encode_ber_length (TYPE_5__*,int) ;
 int mxf_write_common_fields (TYPE_6__*,TYPE_4__*) ;
 int mxf_write_local_tag (TYPE_5__*,int,int) ;
 int mxf_write_metadata_key (TYPE_5__*,int) ;
 int mxf_write_umid (TYPE_6__*,int ) ;
 int mxf_write_uuid (TYPE_5__*,int ,int ) ;

__attribute__((used)) static void mxf_write_structural_component(AVFormatContext *s, AVStream *st, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i;

    mxf_write_metadata_key(pb, 0x011100);
    PRINT_KEY(s, "sturctural component key", pb->buf_ptr - 16);
    klv_encode_ber_length(pb, 108);


    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, SourceClip, mxf->track_instance_count);

    PRINT_KEY(s, "structural component uid", pb->buf_ptr - 16);
    mxf_write_common_fields(s, st);


    mxf_write_local_tag(pb, 8, 0x1201);
    avio_wb64(pb, 0);


    mxf_write_local_tag(pb, 32, 0x1101);
    if (!package->ref) {
        for (i = 0; i < 4; i++)
            avio_wb64(pb, 0);
    } else
        mxf_write_umid(s, package->ref->instance);


    mxf_write_local_tag(pb, 4, 0x1102);
    if (package->type == SourcePackage && !package->ref)
        avio_wb32(pb, 0);
    else
        avio_wb32(pb, st->index+2);
}
