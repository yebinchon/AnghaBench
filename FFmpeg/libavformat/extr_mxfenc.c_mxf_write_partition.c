
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint64_t ;
typedef unsigned int int64_t ;
struct TYPE_9__ {int nb_streams; int * pb; int * oformat; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int edit_units_count; unsigned int* body_partition_offset; int body_partitions_count; unsigned int footer_partition_offset; unsigned int body_offset; int essence_container_count; scalar_t__ edit_unit_byte_count; } ;
typedef TYPE_1__ MXFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 long long DESCRIPTOR_COUNT (int ) ;
 int KAG_SIZE ;
 int SEEK_SET ;
 int av_reallocp_array (unsigned int**,int,int) ;
 int avio_flush (int *) ;
 int avio_seek (int *,unsigned int,int ) ;
 unsigned int avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,unsigned int) ;
 int avio_write (int *,int const*,int) ;
 int const* body_partition_key ;
 int ff_mxf_opatom_muxer ;
 int const* footer_partition_key ;
 int klv_encode_ber4_length (int *,int) ;
 unsigned int klv_fill_size (unsigned int) ;
 int memcmp (int const*,int const*,int) ;
 int mxf_write_essence_container_refs (TYPE_2__*) ;
 int mxf_write_header_metadata_sets (TYPE_2__*) ;
 int mxf_write_klv_fill (TYPE_2__*) ;
 int mxf_write_primer_pack (TYPE_2__*) ;
 int const* op1a_ul ;
 int const* opatom_ul ;

__attribute__((used)) static int mxf_write_partition(AVFormatContext *s, int bodysid,
                                int indexsid,
                                const uint8_t *key, int write_metadata)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t header_byte_count_offset;
    unsigned index_byte_count = 0;
    uint64_t partition_offset = avio_tell(pb);
    int err;

    if (!mxf->edit_unit_byte_count && mxf->edit_units_count)
        index_byte_count = 85 + 12+(s->nb_streams+1)*6 +
            12+mxf->edit_units_count*15;
    else if (mxf->edit_unit_byte_count && indexsid)
        index_byte_count = 80;

    if (index_byte_count) {
        index_byte_count += 16 + 4;
        index_byte_count += klv_fill_size(index_byte_count);
    }

    if (key && !memcmp(key, body_partition_key, 16)) {
        if ((err = av_reallocp_array(&mxf->body_partition_offset, mxf->body_partitions_count + 1,
                                     sizeof(*mxf->body_partition_offset))) < 0) {
            mxf->body_partitions_count = 0;
            return err;
        }
        mxf->body_partition_offset[mxf->body_partitions_count++] = partition_offset;
    }


    if (key)
        avio_write(pb, key, 16);
    else
        avio_write(pb, body_partition_key, 16);

    klv_encode_ber4_length(pb, 88 + 16LL * DESCRIPTOR_COUNT(mxf->essence_container_count));


    avio_wb16(pb, 1);
    avio_wb16(pb, 3);
    avio_wb32(pb, KAG_SIZE);

    avio_wb64(pb, partition_offset);

    if (key && !memcmp(key, body_partition_key, 16) && mxf->body_partitions_count > 1)
        avio_wb64(pb, mxf->body_partition_offset[mxf->body_partitions_count-2]);
    else if (key && !memcmp(key, footer_partition_key, 16) && mxf->body_partitions_count)
        avio_wb64(pb, mxf->body_partition_offset[mxf->body_partitions_count-1]);
    else
        avio_wb64(pb, 0);

    avio_wb64(pb, mxf->footer_partition_offset);


    header_byte_count_offset = avio_tell(pb);
    avio_wb64(pb, 0);


    avio_wb64(pb, index_byte_count);
    avio_wb32(pb, index_byte_count ? indexsid : 0);


    if (bodysid && mxf->edit_units_count && mxf->body_partitions_count && s->oformat != &ff_mxf_opatom_muxer)
        avio_wb64(pb, mxf->body_offset);
    else
        avio_wb64(pb, 0);

    avio_wb32(pb, bodysid);


    if (s->oformat == &ff_mxf_opatom_muxer)
        avio_write(pb, opatom_ul, 16);
    else
        avio_write(pb, op1a_ul, 16);


    mxf_write_essence_container_refs(s);

    if (write_metadata) {

        int64_t pos, start;
        unsigned header_byte_count;

        mxf_write_klv_fill(s);
        start = avio_tell(s->pb);
        mxf_write_primer_pack(s);
        mxf_write_klv_fill(s);
        mxf_write_header_metadata_sets(s);
        pos = avio_tell(s->pb);
        header_byte_count = pos - start + klv_fill_size(pos);


        avio_seek(pb, header_byte_count_offset, SEEK_SET);
        avio_wb64(pb, header_byte_count);
        avio_seek(pb, pos, SEEK_SET);
    }

    if(key)
        avio_flush(pb);

    return 0;
}
