
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;



void mem_rcopy(u8_t *dst, u8_t const *src, u16_t len)
{
    src += len;
    while (len--) {
        *dst++ = *--src;
    }
}
