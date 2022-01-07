
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,int) ;

void avio_wl16(AVIOContext *s, unsigned int val)
{
    avio_w8(s, (uint8_t)val);
    avio_w8(s, (int)val >> 8);
}
