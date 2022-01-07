
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int ff_get_v_length (int) ;

void ff_put_v(AVIOContext *bc, uint64_t val)
{
    int i = ff_get_v_length(val);

    while (--i > 0)
        avio_w8(bc, 128 | (uint8_t)(val >> (7*i)));

    avio_w8(bc, val & 127);
}
