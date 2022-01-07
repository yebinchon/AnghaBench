
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int * oformat; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {long long body_partitions_count; int footer_partition_offset; int * body_partition_offset; scalar_t__ edit_unit_byte_count; } ;
typedef TYPE_1__ MXFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int ) ;
 int avio_write (int *,int ,int) ;
 int ff_mxf_opatom_muxer ;
 int klv_encode_ber_length (int *,int) ;
 int random_index_pack_key ;

__attribute__((used)) static void mxf_write_random_index_pack(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    uint64_t pos = avio_tell(pb);
    int i;

    avio_write(pb, random_index_pack_key, 16);
    klv_encode_ber_length(pb, 28 + 12LL*mxf->body_partitions_count);

    if (mxf->edit_unit_byte_count && s->oformat != &ff_mxf_opatom_muxer)
        avio_wb32(pb, 1);
    else
        avio_wb32(pb, 0);
    avio_wb64(pb, 0);

    for (i = 0; i < mxf->body_partitions_count; i++) {
        avio_wb32(pb, 1);
        avio_wb64(pb, mxf->body_partition_offset[i]);
    }

    avio_wb32(pb, 0);
    avio_wb64(pb, mxf->footer_partition_offset);

    avio_wb32(pb, avio_tell(pb) - pos + 4);
}
