
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int * png_structrp ;
typedef int png_fixed_point ;
typedef int png_const_bytep ;


 int PNG_FIXED_ERROR ;
 scalar_t__ PNG_UINT_31_MAX ;
 scalar_t__ png_get_uint_32 (int ) ;
 int png_warning (int *,char*) ;

__attribute__((used)) static png_fixed_point
png_get_fixed_point(png_structrp png_ptr, png_const_bytep buf)
{
   png_uint_32 uval = png_get_uint_32(buf);

   if (uval <= PNG_UINT_31_MAX)
      return (png_fixed_point)uval;


   if (png_ptr != ((void*)0))
      png_warning(png_ptr, "PNG fixed point integer out of range");

   return PNG_FIXED_ERROR;
}
