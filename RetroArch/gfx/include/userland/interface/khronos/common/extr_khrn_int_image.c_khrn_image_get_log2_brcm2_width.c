
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int KHRN_IMAGE_FORMAT_T ;







 int IMAGE_FORMAT_COMP_MASK ;

 int IMAGE_FORMAT_PIXEL_SIZE_MASK ;


 int UNREACHABLE () ;
 scalar_t__ khrn_image_is_brcm1 (int) ;
 scalar_t__ khrn_image_is_brcm2 (int) ;
 int vcos_assert (int) ;

uint32_t khrn_image_get_log2_brcm2_width(KHRN_IMAGE_FORMAT_T format)
{
   vcos_assert(khrn_image_is_brcm1(format) || khrn_image_is_brcm2(format));

   switch (format & IMAGE_FORMAT_COMP_MASK) {
   case 129:
   {
      switch (format & IMAGE_FORMAT_PIXEL_SIZE_MASK) {
      case 135: return 6;
      case 132: return 4;
      case 131: return 3;
      case 134: return 3;
      case 133: return 2;
      default: UNREACHABLE(); return 0;
      }
   }
   case 130: return 3;
   case 128: return 3;
   default: UNREACHABLE(); return 0;
   }
}
