
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int * oformat; TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_17__ {scalar_t__ buf_ptr; } ;
struct TYPE_16__ {int essence_container_count; int timestamp; } ;
typedef TYPE_1__ MXFContext ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int ContentStorage ;
 long long DESCRIPTOR_COUNT (int ) ;
 int Identification ;
 int PRINT_KEY (TYPE_3__*,char*,scalar_t__) ;
 int Preface ;
 int avio_wb16 (TYPE_2__*,int) ;
 int avio_wb32 (TYPE_2__*,int) ;
 int avio_wb64 (TYPE_2__*,int ) ;
 int avio_write (TYPE_2__*,int ,int) ;
 int ff_mxf_opatom_muxer ;
 int klv_encode_ber_length (TYPE_2__*,int) ;
 int mxf_write_essence_container_refs (TYPE_3__*) ;
 int mxf_write_local_tag (TYPE_2__*,int,int) ;
 int mxf_write_metadata_key (TYPE_2__*,int) ;
 int mxf_write_refs_count (TYPE_2__*,int) ;
 int mxf_write_uuid (TYPE_2__*,int ,int ) ;
 int op1a_ul ;
 int opatom_ul ;

__attribute__((used)) static void mxf_write_preface(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;

    mxf_write_metadata_key(pb, 0x012f00);
    PRINT_KEY(s, "preface key", pb->buf_ptr - 16);
    klv_encode_ber_length(pb, 138 + 16LL * DESCRIPTOR_COUNT(mxf->essence_container_count));


    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, Preface, 0);
    PRINT_KEY(s, "preface uid", pb->buf_ptr - 16);


    mxf_write_local_tag(pb, 8, 0x3B02);
    avio_wb64(pb, mxf->timestamp);


    mxf_write_local_tag(pb, 2, 0x3B05);
    avio_wb16(pb, 259);


    mxf_write_local_tag(pb, 4, 0x3B07);
    avio_wb32(pb, 1);


    mxf_write_local_tag(pb, 16 + 8, 0x3B06);
    mxf_write_refs_count(pb, 1);
    mxf_write_uuid(pb, Identification, 0);


    mxf_write_local_tag(pb, 16, 0x3B03);
    mxf_write_uuid(pb, ContentStorage, 0);


    mxf_write_local_tag(pb, 16, 0x3B09);
    if (s->oformat == &ff_mxf_opatom_muxer)
        avio_write(pb, opatom_ul, 16);
    else
        avio_write(pb, op1a_ul, 16);


    mxf_write_local_tag(pb, 8 + 16LL * DESCRIPTOR_COUNT(mxf->essence_container_count), 0x3B0A);
    mxf_write_essence_container_refs(s);


    mxf_write_local_tag(pb, 8, 0x3B0B);
    avio_wb64(pb, 0);
}
