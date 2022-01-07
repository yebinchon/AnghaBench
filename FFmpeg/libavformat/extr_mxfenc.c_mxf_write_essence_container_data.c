
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int EssenceContainerData ;
 int avio_wb32 (int *,int) ;
 int klv_encode_ber_length (int *,int) ;
 int mxf_write_local_tag (int *,int,int) ;
 int mxf_write_metadata_key (int *,int) ;
 int mxf_write_umid (TYPE_1__*,int) ;
 int mxf_write_uuid (int *,int ,int ) ;

__attribute__((used)) static int mxf_write_essence_container_data(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;

    mxf_write_metadata_key(pb, 0x012300);
    klv_encode_ber_length(pb, 72);

    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, EssenceContainerData, 0);

    mxf_write_local_tag(pb, 32, 0x2701);
    mxf_write_umid(s, 1);

    mxf_write_local_tag(pb, 4, 0x3F07);
    avio_wb32(pb, 1);

    mxf_write_local_tag(pb, 4, 0x3F06);
    avio_wb32(pb, 2);

    return 0;
}
