
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



uint64_t dtoverlay_read_u64(const void *src, int off)
{
   const unsigned char *p = src;
   return ((uint64_t)p[off + 0] << 56) | ((uint64_t)p[off + 1] << 48) |
          ((uint64_t)p[off + 2] << 40) | ((uint64_t)p[off + 3] << 32) |
          (p[off + 4] << 24) | (p[off + 5] << 16) |
          (p[off + 6] << 8) | (p[off + 7] << 0);
}
