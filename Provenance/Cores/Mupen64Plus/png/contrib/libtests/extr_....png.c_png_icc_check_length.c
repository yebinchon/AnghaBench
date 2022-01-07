
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_const_structrp ;
typedef int png_const_charp ;
typedef int png_colorspacerp ;
struct TYPE_5__ {scalar_t__ user_chunk_malloc_max; } ;


 scalar_t__ PNG_SIZE_MAX ;
 scalar_t__ PNG_USER_CHUNK_MALLOC_MAX ;
 int icc_check_length (TYPE_1__*,int ,int ,scalar_t__) ;
 int png_icc_profile_error (TYPE_1__*,int ,int ,scalar_t__,char*) ;

int
png_icc_check_length(png_const_structrp png_ptr, png_colorspacerp colorspace,
    png_const_charp name, png_uint_32 profile_length)
{
   if (!icc_check_length(png_ptr, colorspace, name, profile_length))
      return 0;
      else if (PNG_SIZE_MAX < profile_length)
         return png_icc_profile_error(png_ptr, colorspace, name, profile_length,
             "exceeds system limits");


   return 1;
}
