
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_w8 (int *,unsigned char) ;

__attribute__((used)) static void put_amf_byte(AVIOContext *pb, unsigned char abyte)
{
    avio_w8(pb, abyte);
}
