
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



void dtoverlay_write_u8(void *dst, int off, uint32_t val)
{
   unsigned char *p = dst;
   p[off] = (val >> 0) & 0xff;
}
