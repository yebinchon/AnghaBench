
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



void dtoverlay_write_u64(void *dst, int off, uint64_t val)
{
   unsigned char *p = dst;
   p[off + 0] = (val >> 56) & 0xff;
   p[off + 1] = (val >> 48) & 0xff;
   p[off + 2] = (val >> 40) & 0xff;
   p[off + 3] = (val >> 32) & 0xff;
   p[off + 4] = (val >> 24) & 0xff;
   p[off + 5] = (val >> 16) & 0xff;
   p[off + 6] = (val >> 8) & 0xff;
   p[off + 7] = (val >> 0) & 0xff;
}
