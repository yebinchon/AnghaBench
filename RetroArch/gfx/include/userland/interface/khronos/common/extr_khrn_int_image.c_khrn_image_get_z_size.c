
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int KHRN_IMAGE_FORMAT_T ;


 int DEPTH_32_TLBD ;
 int DEPTH_COL_64_TLBD ;


 int IMAGE_FORMAT_PIXEL_SIZE_MASK ;
 int IMAGE_FORMAT_Z ;
 int UNREACHABLE () ;
 scalar_t__ khrn_image_is_depth (int) ;

uint32_t khrn_image_get_z_size(KHRN_IMAGE_FORMAT_T format)
{
   if (khrn_image_is_depth(format) && (format & IMAGE_FORMAT_Z)) {
      if (format == DEPTH_32_TLBD || format == DEPTH_COL_64_TLBD)
         return 24;
      switch (format & IMAGE_FORMAT_PIXEL_SIZE_MASK) {
      case 128: return 24;
      case 129: return 16;
      default: UNREACHABLE(); return 0;
      }
   } else {
      return 0;
   }
}
