
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_image_read_control ;


 int PNG_sRGB_FROM_LINEAR (int) ;
 int P_LINEAR ;
 int decode_gamma (int *,int,int) ;

__attribute__((used)) static png_uint_32
png_colormap_compose(png_image_read_control *display,
    png_uint_32 foreground, int foreground_encoding, png_uint_32 alpha,
    png_uint_32 background, int encoding)
{





   png_uint_32 f = decode_gamma(display, foreground, foreground_encoding);
   png_uint_32 b = decode_gamma(display, background, encoding);




   f = f * alpha + b * (255-alpha);

   if (encoding == P_LINEAR)
   {



      f *= 257;
      f += f >> 16;
      f = (f+32768) >> 16;
   }

   else
      f = PNG_sRGB_FROM_LINEAR(f);

   return f;
}
