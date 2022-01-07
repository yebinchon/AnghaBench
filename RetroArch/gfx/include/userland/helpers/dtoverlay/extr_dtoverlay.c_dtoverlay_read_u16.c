
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const uint16_t ;



uint16_t dtoverlay_read_u16(const void *src, int off)
{
   const unsigned char *p = src;
   return (p[off + 0] << 8) | (p[off + 1] << 0);
}
