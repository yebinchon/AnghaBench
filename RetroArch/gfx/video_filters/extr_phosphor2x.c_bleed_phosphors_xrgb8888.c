
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct filter_data {unsigned int phosphor_bleed; unsigned int* phosphor_bloom_8888; } ;


 unsigned int blue_xrgb8888 (int ) ;
 unsigned int clamp8 (unsigned int) ;
 unsigned int green_xrgb8888 (int ) ;
 unsigned int red_xrgb8888 (int ) ;
 int set_blue_xrgb8888 (int ,unsigned int) ;
 int set_green_xrgb8888 (int ,unsigned int) ;
 int set_red_xrgb8888 (int ,unsigned int) ;

__attribute__((used)) static void bleed_phosphors_xrgb8888(void *data,
      uint32_t *scanline, unsigned width)
{
   unsigned x;
   struct filter_data *filt = (struct filter_data*)data;


   for (x = 0; x < width; x += 2)
   {
      unsigned r = red_xrgb8888(scanline[x]);
      unsigned r_set = clamp8(r * filt->phosphor_bleed *
            filt->phosphor_bloom_8888[r]);
      set_red_xrgb8888(scanline[x + 1], r_set);
   }


   for (x = 0; x < width; x++)
   {
      unsigned g = green_xrgb8888(scanline[x]);
      unsigned g_set = clamp8((g >> 1) + 0.5 * g *
            filt->phosphor_bleed * filt->phosphor_bloom_8888[g]);
      set_green_xrgb8888(scanline[x], g_set);
   }


   set_blue_xrgb8888(scanline[0], 0);
   for (x = 1; x < width; x += 2)
   {
      unsigned b = blue_xrgb8888(scanline[x]);
      unsigned b_set = clamp8(b * filt->phosphor_bleed *
            filt->phosphor_bloom_8888[b]);
      set_blue_xrgb8888(scanline[x + 1], b_set);
   }
}
