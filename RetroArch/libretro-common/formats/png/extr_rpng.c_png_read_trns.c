
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static bool png_read_trns(uint8_t *buf, uint32_t *palette, unsigned entries)
{
   unsigned i;

   for (i = 0; i < entries; i++, buf++, palette++)
      *palette = (*palette & 0x00ffffff) | (unsigned)*buf << 24;

   return 1;
}
