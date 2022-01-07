
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* pb; } ;
struct TYPE_13__ {scalar_t__ buf_ptr; } ;
struct TYPE_12__ {int instance; int type; } ;
typedef TYPE_1__ MXFPackage ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int ContentStorage ;
 int EssenceContainerData ;
 int PRINT_KEY (TYPE_3__*,char*,scalar_t__) ;
 int klv_encode_ber_length (TYPE_2__*,int) ;
 int mxf_write_local_tag (TYPE_2__*,int,int) ;
 int mxf_write_metadata_key (TYPE_2__*,int) ;
 int mxf_write_refs_count (TYPE_2__*,int) ;
 int mxf_write_uuid (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void mxf_write_content_storage(AVFormatContext *s, MXFPackage *packages, int package_count)
{
    AVIOContext *pb = s->pb;
    int i;

    mxf_write_metadata_key(pb, 0x011800);
    PRINT_KEY(s, "content storage key", pb->buf_ptr - 16);
    klv_encode_ber_length(pb, 60 + (16 * package_count));


    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, ContentStorage, 0);
    PRINT_KEY(s, "content storage uid", pb->buf_ptr - 16);


    mxf_write_local_tag(pb, 16 * package_count + 8, 0x1901);
    mxf_write_refs_count(pb, package_count);
    for (i = 0; i < package_count; i++) {
        mxf_write_uuid(pb, packages[i].type, packages[i].instance);
    }


    mxf_write_local_tag(pb, 8 + 16, 0x1902);
    mxf_write_refs_count(pb, 1);
    mxf_write_uuid(pb, EssenceContainerData, 0);
}
