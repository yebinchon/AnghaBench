
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static void dump_line_565_to_24(uint8_t *line, const uint16_t *src, unsigned width)
{
   unsigned i;

   for (i = 0; i < width; i++)
   {
      uint16_t pixel = *src++;
      uint8_t b = (pixel >> 0) & 0x1f;
      uint8_t g = (pixel >> 5) & 0x3f;
      uint8_t r = (pixel >> 11) & 0x1f;
      *line++ = (b << 3) | (b >> 2);
      *line++ = (g << 2) | (g >> 4);
      *line++ = (r << 3) | (r >> 2);
   }
}
