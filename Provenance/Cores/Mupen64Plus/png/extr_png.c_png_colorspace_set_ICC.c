
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int png_const_structrp ;
typedef int png_const_charp ;
typedef int png_const_bytep ;
typedef TYPE_1__* png_colorspacerp ;
struct TYPE_7__ {int flags; } ;


 int PNG_COLORSPACE_INVALID ;
 scalar_t__ icc_check_length (int ,TYPE_1__*,int ,int ) ;
 scalar_t__ png_icc_check_header (int ,TYPE_1__*,int ,int ,int ,int) ;
 scalar_t__ png_icc_check_tag_table (int ,TYPE_1__*,int ,int ,int ) ;
 int png_icc_set_sRGB (int ,TYPE_1__*,int ,int ) ;

int
png_colorspace_set_ICC(png_const_structrp png_ptr, png_colorspacerp colorspace,
    png_const_charp name, png_uint_32 profile_length, png_const_bytep profile,
    int color_type)
{
   if ((colorspace->flags & PNG_COLORSPACE_INVALID) != 0)
      return 0;

   if (icc_check_length(png_ptr, colorspace, name, profile_length) != 0 &&
       png_icc_check_header(png_ptr, colorspace, name, profile_length, profile,
           color_type) != 0 &&
       png_icc_check_tag_table(png_ptr, colorspace, name, profile_length,
           profile) != 0)
   {




      return 1;
   }


   return 0;
}
