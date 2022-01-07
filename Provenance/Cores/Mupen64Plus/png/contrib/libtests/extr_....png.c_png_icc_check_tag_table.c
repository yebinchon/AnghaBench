
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int png_const_structrp ;
typedef int png_const_charp ;
typedef scalar_t__ png_const_bytep ;
typedef int * png_colorspacerp ;


 scalar_t__ png_get_uint_32 (scalar_t__) ;
 int png_icc_profile_error (int ,int *,int ,scalar_t__,char*) ;

int
png_icc_check_tag_table(png_const_structrp png_ptr, png_colorspacerp colorspace,
    png_const_charp name, png_uint_32 profile_length,
    png_const_bytep profile )
{
   png_uint_32 tag_count = png_get_uint_32(profile+128);
   png_uint_32 itag;
   png_const_bytep tag = profile+132;




   for (itag=0; itag < tag_count; ++itag, tag += 12)
   {
      png_uint_32 tag_id = png_get_uint_32(tag+0);
      png_uint_32 tag_start = png_get_uint_32(tag+4);
      png_uint_32 tag_length = png_get_uint_32(tag+8);







      if ((tag_start & 3) != 0)
      {




         (void)png_icc_profile_error(png_ptr, ((void*)0), name, tag_id,
             "ICC profile tag start not a multiple of 4");
      }




      if (tag_start > profile_length || tag_length > profile_length - tag_start)
         return png_icc_profile_error(png_ptr, colorspace, name, tag_id,
             "ICC profile tag outside profile");
   }

   return 1;
}
