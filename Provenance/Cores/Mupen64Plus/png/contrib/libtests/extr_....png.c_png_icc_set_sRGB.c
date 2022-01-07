
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLong ;
typedef int png_const_structrp ;
typedef scalar_t__ png_const_bytep ;
typedef int png_colorspacerp ;


 int png_colorspace_set_sRGB (int ,int ,int) ;
 scalar_t__ png_compare_ICC_profile_with_sRGB (int ,scalar_t__,int ) ;
 scalar_t__ png_get_uint_32 (scalar_t__) ;

void
png_icc_set_sRGB(png_const_structrp png_ptr,
    png_colorspacerp colorspace, png_const_bytep profile, uLong adler)
{



   if (png_compare_ICC_profile_with_sRGB(png_ptr, profile, adler) != 0)
      (void)png_colorspace_set_sRGB(png_ptr, colorspace,
         (int) png_get_uint_32(profile+64));
}
