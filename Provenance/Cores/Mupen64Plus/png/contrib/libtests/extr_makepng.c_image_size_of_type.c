
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pixel_depth_of_type (int,int) ;

__attribute__((used)) static unsigned int
image_size_of_type(int color_type, int bit_depth, unsigned int *colors,
   int small)
{
   if (*colors)
      return 16;

   else
   {
      int pixel_depth = pixel_depth_of_type(color_type, bit_depth);

      if (small)
      {
         if (pixel_depth <= 8)
            return 1 << pixel_depth;

         else
            return 256;
      }

      else if (pixel_depth < 8)
         return 64;

      else if (pixel_depth > 16)
         return 1024;

      else
         return 256;
   }
}
