
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int blend_pixels_rgb565 (int ,int ) ;

__attribute__((used)) static void blit_linear_line_rgb565(uint16_t * out,
      const uint16_t *in, unsigned width)
{
   unsigned i;


   for (i = 0; i < width; i++)
      out[i << 1] = in[i];


   for (i = 1; i < (width << 1) - 1; i += 2)
      out[i] =
         blend_pixels_rgb565(out[i - 1], out[i + 1]);


   out[0] = blend_pixels_rgb565(out[0], 0);
   out[(width << 1) - 1] =
      blend_pixels_rgb565(out[(width << 1) - 1], 0);
}
