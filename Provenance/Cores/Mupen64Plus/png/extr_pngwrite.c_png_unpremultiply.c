
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_byte ;


 int PNG_sRGB_FROM_LINEAR (int) ;

__attribute__((used)) static png_byte
png_unpremultiply(png_uint_32 component, png_uint_32 alpha,
    png_uint_32 reciprocal )
{
   if (component >= alpha || alpha < 128)
      return 255;




   else if (component > 0)
   {





      if (alpha < 65407)
      {
         component *= reciprocal;
         component += 64;
         component >>= 7;
      }

      else
         component *= 255;


      return (png_byte)PNG_sRGB_FROM_LINEAR(component);
   }

   else
      return 0;
}
