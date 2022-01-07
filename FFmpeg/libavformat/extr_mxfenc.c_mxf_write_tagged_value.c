
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int tagged_value_count; } ;
typedef TYPE_1__ MXFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int TaggedValue ;
 int avio_put_str16le (int *,char const*) ;
 int avio_write (int *,int ,int) ;
 int klv_encode_ber_length (int *,int) ;
 int mxf_indirect_value_utf16le ;
 int mxf_utf16_local_tag_length (char const*) ;
 int mxf_write_local_tag (int *,int,int) ;
 int mxf_write_local_tag_utf16 (int *,int,char const*) ;
 int mxf_write_metadata_key (int *,int) ;
 int mxf_write_uuid (int *,int ,int ) ;

__attribute__((used)) static int mxf_write_tagged_value(AVFormatContext *s, const char* name, const char* value)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int name_size = mxf_utf16_local_tag_length(name);
    int indirect_value_size = 13 + mxf_utf16_local_tag_length(value);

    if (!name_size || indirect_value_size == 13)
        return 1;

    mxf_write_metadata_key(pb, 0x013f00);
    klv_encode_ber_length(pb, 24 + name_size + indirect_value_size);


    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, TaggedValue, mxf->tagged_value_count);


    mxf_write_local_tag_utf16(pb, 0x5001, name);


    mxf_write_local_tag(pb, indirect_value_size, 0x5003);
    avio_write(pb, mxf_indirect_value_utf16le, 17);
    avio_put_str16le(pb, value);

    mxf->tagged_value_count++;
    return 0;
}
