
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



void dtoverlay_write_u32(void *dst, int off, uint32_t val)
{
   unsigned char *p = dst;
   p[off + 0] = (val >> 24) & 0xff;
   p[off + 1] = (val >> 16) & 0xff;
   p[off + 2] = (val >> 8) & 0xff;
   p[off + 3] = (val >> 0) & 0xff;
}
