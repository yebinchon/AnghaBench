
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int * pb; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {int profile; int level; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVCSubDescriptor ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_write (int *,int ,int) ;
 int klv_encode_ber4_length (int *,int ) ;
 int mxf_avc_subdescriptor_key ;
 int mxf_update_klv_size (int *,int ) ;
 int mxf_write_local_tag (int *,int,int) ;
 int mxf_write_uuid (int *,int ,int ) ;

__attribute__((used)) static void mxf_write_avc_subdesc(AVFormatContext *s, AVStream *st)
{
    AVIOContext *pb = s->pb;
    int64_t pos;

    avio_write(pb, mxf_avc_subdescriptor_key, 16);
    klv_encode_ber4_length(pb, 0);
    pos = avio_tell(pb);

    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, AVCSubDescriptor, 0);

    mxf_write_local_tag(pb, 1, 0x8200);
    avio_w8(pb, 0xFF);

    mxf_write_local_tag(pb, 1, 0x8201);
    avio_w8(pb, st->codecpar->profile);

    mxf_write_local_tag(pb, 1, 0x8202);
    avio_w8(pb, st->codecpar->level);

    mxf_update_klv_size(s->pb, pos);
}
