
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,unsigned int) ;

void avio_wb32(AVIOContext *s, unsigned int val)
{
    avio_w8(s, val >> 24 );
    avio_w8(s, (uint8_t)(val >> 16));
    avio_w8(s, (uint8_t)(val >> 8 ));
    avio_w8(s, (uint8_t) val );
}
