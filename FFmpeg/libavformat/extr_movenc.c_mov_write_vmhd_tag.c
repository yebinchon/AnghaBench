
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_vmhd_tag(AVIOContext *pb)
{
    avio_wb32(pb, 0x14);
    ffio_wfourcc(pb, "vmhd");
    avio_wb32(pb, 0x01);
    avio_wb64(pb, 0);
    return 0x14;
}
