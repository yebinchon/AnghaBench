
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STBI_grey ;
 int STBI_grey_alpha ;
 int STBI_rgb ;

__attribute__((used)) static int stbi__tga_get_comp(int bits_per_pixel, int is_grey, int* is_rgb16)
{

   if (is_rgb16) *is_rgb16 = 0;
   switch(bits_per_pixel) {
      case 8: return STBI_grey;
      case 16: if(is_grey) return STBI_grey_alpha;

      case 15: if(is_rgb16) *is_rgb16 = 1;
               return STBI_rgb;
      case 24:
      case 32: return bits_per_pixel/8;
      default: return 0;
   }
}
