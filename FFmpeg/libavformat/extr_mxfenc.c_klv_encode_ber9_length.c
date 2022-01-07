
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int avio_wb64 (int *,int ) ;

__attribute__((used)) static void klv_encode_ber9_length(AVIOContext *pb, uint64_t len)
{
    avio_w8(pb, 0x80 + 8);
    avio_wb64(pb, len);
}
