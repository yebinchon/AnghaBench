
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXFPktType ;
typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int ) ;

__attribute__((used)) static void gxf_write_packet_header(AVIOContext *pb, GXFPktType type)
{
    avio_wb32(pb, 0);
    avio_w8(pb, 1);
    avio_w8(pb, type);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_w8(pb, 0xE1);
    avio_w8(pb, 0xE2);
}
