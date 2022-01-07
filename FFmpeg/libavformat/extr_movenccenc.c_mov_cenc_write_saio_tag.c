
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int) ;

__attribute__((used)) static int mov_cenc_write_saio_tag(AVIOContext *pb, int64_t auxiliary_info_offset)
{
    int64_t pos = avio_tell(pb);
    uint8_t version;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "saio");
    version = auxiliary_info_offset > 0xffffffff ? 1 : 0;
    avio_w8(pb, version);
    avio_wb24(pb, 0);
    avio_wb32(pb, 1);
    if (version) {
        avio_wb64(pb, auxiliary_info_offset);
    } else {
        avio_wb32(pb, auxiliary_info_offset);
    }
    return update_size(pb, pos);
}
