
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


typedef int uint8_t ;
struct TYPE_23__ {long long nb_streams; TYPE_2__** streams; TYPE_5__* pb; TYPE_4__* priv_data; } ;
struct TYPE_22__ {scalar_t__ buf_ptr; } ;
struct TYPE_18__ {int num; int den; } ;
struct TYPE_21__ {int essence_container_count; TYPE_1__ time_base; } ;
struct TYPE_20__ {size_t index; } ;
struct TYPE_19__ {TYPE_3__* priv_data; } ;
struct TYPE_17__ {int * container_ul; } ;
typedef TYPE_3__ MXFStreamContext ;
typedef TYPE_4__ MXFContext ;
typedef TYPE_5__ AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int MultipleDescriptor ;
 int PRINT_KEY (TYPE_6__*,char*,scalar_t__) ;
 int SubDescriptor ;
 int avio_wb32 (TYPE_5__*,int ) ;
 int avio_write (TYPE_5__*,int const*,int) ;
 int klv_encode_ber_length (TYPE_5__*,int) ;
 int * multiple_desc_ul ;
 TYPE_12__* mxf_essence_container_uls ;
 int mxf_write_local_tag (TYPE_5__*,int,int) ;
 int mxf_write_metadata_key (TYPE_5__*,int) ;
 int mxf_write_refs_count (TYPE_5__*,int) ;
 int mxf_write_uuid (TYPE_5__*,int ,int) ;

__attribute__((used)) static void mxf_write_multi_descriptor(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    const uint8_t *ul;
    int i;

    mxf_write_metadata_key(pb, 0x014400);
    PRINT_KEY(s, "multiple descriptor key", pb->buf_ptr - 16);
    klv_encode_ber_length(pb, 64 + 16LL * s->nb_streams);

    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, MultipleDescriptor, 0);
    PRINT_KEY(s, "multi_desc uid", pb->buf_ptr - 16);


    mxf_write_local_tag(pb, 8, 0x3001);
    avio_wb32(pb, mxf->time_base.den);
    avio_wb32(pb, mxf->time_base.num);


    mxf_write_local_tag(pb, 16, 0x3004);
    if (mxf->essence_container_count > 1)
        ul = multiple_desc_ul;
    else {
        MXFStreamContext *sc = s->streams[0]->priv_data;
        ul = mxf_essence_container_uls[sc->index].container_ul;
    }
    avio_write(pb, ul, 16);


    mxf_write_local_tag(pb, s->nb_streams * 16 + 8, 0x3F01);
    mxf_write_refs_count(pb, s->nb_streams);
    for (i = 0; i < s->nb_streams; i++)
        mxf_write_uuid(pb, SubDescriptor, i);
}
