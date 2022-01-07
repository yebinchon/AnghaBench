
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct filter_data {unsigned int phosphor_bleed; unsigned int* phosphor_bloom_565; } ;


 unsigned int blue_rgb565 (int ) ;
 unsigned int clamp6 (unsigned int) ;
 unsigned int green_rgb565 (int ) ;
 unsigned int red_rgb565 (int ) ;
 int set_blue_rgb565 (int ,unsigned int) ;
 int set_green_rgb565 (int ,unsigned int) ;
 int set_red_rgb565 (int ,unsigned int) ;

__attribute__((used)) static void bleed_phosphors_rgb565(void *data,
      uint16_t *scanline, unsigned width)
{
   unsigned x;
   struct filter_data *filt = (struct filter_data*)data;


   for (x = 0; x < width; x += 2)
   {
      unsigned r = red_rgb565(scanline[x]);
      unsigned r_set = clamp6(r * filt->phosphor_bleed *
            filt->phosphor_bloom_565[r]);
      set_red_rgb565(scanline[x + 1], r_set);
   }


   for (x = 0; x < width; x++)
   {
      unsigned g = green_rgb565(scanline[x]);
      unsigned g_set = clamp6((g >> 1) + 0.5 * g *
            filt->phosphor_bleed * filt->phosphor_bloom_565[g]);
      set_green_rgb565(scanline[x], g_set);
   }


   set_blue_rgb565(scanline[0], 0);
   for (x = 1; x < width; x += 2)
   {
      unsigned b = blue_rgb565(scanline[x]);
      unsigned b_set = clamp6(b * filt->phosphor_bleed *
            filt->phosphor_bloom_565[b]);
      set_blue_rgb565(scanline[x + 1], b_set);
   }
}
