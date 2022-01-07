
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int AES_CTR_IV_SIZE ;
 int CENC_KID_SIZE ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb24 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_cenc_write_schi_tag(AVIOContext *pb, uint8_t* kid)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "schi");

    avio_wb32(pb, 32);
    ffio_wfourcc(pb, "tenc");
    avio_wb32(pb, 0);
    avio_wb24(pb, 1);
    avio_w8(pb, AES_CTR_IV_SIZE);
    avio_write(pb, kid, CENC_KID_SIZE);

    return update_size(pb, pos);
}
