
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int flags; int * oformat; TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_14__ {scalar_t__ buf_ptr; } ;
struct TYPE_13__ {int timestamp; } ;
typedef TYPE_1__ MXFContext ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVFMT_FLAG_BITEXACT ;
 char* AV_STRINGIFY (int ) ;
 int Identification ;
 int LIBAVFORMAT_VERSION ;
 int PRINT_KEY (TYPE_3__*,char*,scalar_t__) ;
 int avio_wb64 (TYPE_2__*,int ) ;
 int ff_mxf_opatom_muxer ;
 int klv_encode_ber_length (TYPE_2__*,int) ;
 int mxf_utf16_local_tag_length (char const*) ;
 int mxf_write_local_tag (TYPE_2__*,int,int) ;
 int mxf_write_local_tag_utf16 (TYPE_2__*,int,char const*) ;
 int mxf_write_metadata_key (TYPE_2__*,int) ;
 int mxf_write_uuid (TYPE_2__*,int ,int) ;
 int store_version (TYPE_3__*) ;

__attribute__((used)) static void mxf_write_identification(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    const char *company = "FFmpeg";
    const char *product = s->oformat != &ff_mxf_opatom_muxer ? "OP1a Muxer" : "OPAtom Muxer";
    const char *version;
    int length;

    mxf_write_metadata_key(pb, 0x013000);
    PRINT_KEY(s, "identification key", pb->buf_ptr - 16);

    version = s->flags & AVFMT_FLAG_BITEXACT ?
        "0.0.0" : AV_STRINGIFY(LIBAVFORMAT_VERSION);
    length = 100 +mxf_utf16_local_tag_length(company) +
                  mxf_utf16_local_tag_length(product) +
                  mxf_utf16_local_tag_length(version);
    klv_encode_ber_length(pb, length);


    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, Identification, 0);
    PRINT_KEY(s, "identification uid", pb->buf_ptr - 16);


    mxf_write_local_tag(pb, 16, 0x3C09);
    mxf_write_uuid(pb, Identification, 1);
    mxf_write_local_tag_utf16(pb, 0x3C01, company);
    mxf_write_local_tag_utf16(pb, 0x3C02, product);

    mxf_write_local_tag(pb, 10, 0x3C03);
    store_version(s);

    mxf_write_local_tag_utf16(pb, 0x3C04, version);


    mxf_write_local_tag(pb, 16, 0x3C05);
    mxf_write_uuid(pb, Identification, 2);


    mxf_write_local_tag(pb, 8, 0x3C06);
    avio_wb64(pb, mxf->timestamp);

    mxf_write_local_tag(pb, 10, 0x3C07);
    store_version(s);
}
