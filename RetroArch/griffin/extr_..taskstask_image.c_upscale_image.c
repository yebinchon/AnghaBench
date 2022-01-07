
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct texture_image {unsigned int* pixels; int width; int height; } ;


 scalar_t__ calloc (int,int) ;

__attribute__((used)) static bool upscale_image(
      unsigned scale_factor,
      struct texture_image *image_src,
      struct texture_image *image_dst)
{
   uint32_t x_ratio, y_ratio;
   unsigned x_src, y_src;
   unsigned x_dst, y_dst;


   if ((scale_factor < 1) || !image_src || !image_dst)
      return 0;

   if (!image_src->pixels || (image_src->width < 1) || (image_src->height < 1))
      return 0;


   image_dst->width = image_src->width * scale_factor;
   image_dst->height = image_src->height * scale_factor;


   image_dst->pixels = (uint32_t*)calloc(image_dst->width * image_dst->height, sizeof(uint32_t));
   if (!image_dst->pixels)
      return 0;


   x_ratio = ((image_src->width << 16) / image_dst->width);
   y_ratio = ((image_src->height << 16) / image_dst->height);

   for (y_dst = 0; y_dst < image_dst->height; y_dst++)
   {
      y_src = (y_dst * y_ratio) >> 16;
      for (x_dst = 0; x_dst < image_dst->width; x_dst++)
      {
         x_src = (x_dst * x_ratio) >> 16;
         image_dst->pixels[(y_dst * image_dst->width) + x_dst] = image_src->pixels[(y_src * image_src->width) + x_src];
      }
   }

   return 1;
}
