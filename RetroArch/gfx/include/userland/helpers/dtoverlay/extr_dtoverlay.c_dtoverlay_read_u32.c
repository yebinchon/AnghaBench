
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const uint32_t ;



uint32_t dtoverlay_read_u32(const void *src, int off)
{
   const unsigned char *p = src;
   return (p[off + 0] << 24) | (p[off + 1] << 16) |
          (p[off + 2] << 8) | (p[off + 3] << 0);
}
