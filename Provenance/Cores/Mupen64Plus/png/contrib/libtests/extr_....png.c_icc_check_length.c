
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_const_structrp ;
typedef int png_const_charp ;
typedef int png_colorspacerp ;


 int png_icc_profile_error (int ,int ,int ,int,char*) ;

__attribute__((used)) static int
icc_check_length(png_const_structrp png_ptr, png_colorspacerp colorspace,
    png_const_charp name, png_uint_32 profile_length)
{
   if (profile_length < 132)
      return png_icc_profile_error(png_ptr, colorspace, name, profile_length,
          "too short");

   return 1;
}
