
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture_image {scalar_t__ supports_rgba; } ;



bool image_texture_set_color_shifts(
      unsigned *r_shift, unsigned *g_shift, unsigned *b_shift,
      unsigned *a_shift,
      struct texture_image *out_img
      )
{
   *a_shift = 24;
   *r_shift = 16;
   *g_shift = 8;
   *b_shift = 0;

   if (out_img->supports_rgba)
   {
      *r_shift = 0;
      *b_shift = 16;
      return 1;
   }

   return 0;
}
