
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const uint8_t ;



uint8_t dtoverlay_read_u8(const void *src, int off)
{
   const unsigned char *p = src;
   return (p[off + 0] << 0);
}
