
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_byte ;


 int PNG_FORMAT_FLAG_AFIRST ;
 int PNG_FORMAT_FLAG_ALPHA ;
 int PNG_FORMAT_FLAG_BGR ;
 int PNG_FORMAT_FLAG_COLOR ;

__attribute__((used)) static png_byte
component_loc(png_byte loc[4], png_uint_32 format)
{
   png_byte channels;

   if (format & PNG_FORMAT_FLAG_COLOR)
   {
      channels = 3;

      loc[2] = 1;
      {
         loc[1] = 0;
         loc[3] = 2;
      }
   }

   else
   {
      channels = 1;
      loc[1] = loc[2] = loc[3] = 0;
   }

   if (format & PNG_FORMAT_FLAG_ALPHA)
   {
         loc[0] = channels;

      ++channels;
   }

   else
      loc[0] = 4;

   return channels;
}
