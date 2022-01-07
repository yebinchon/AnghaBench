
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int KHRN_IMAGE_FORMAT_T ;
 int IMAGE_FORMAT_COMP_MASK ;

 int IMAGE_FORMAT_INVALID ;
 int IMAGE_FORMAT_PIXEL_SIZE_MASK ;


 int UNREACHABLE () ;
 int vcos_assert (int) ;

uint32_t khrn_image_get_bpp(KHRN_IMAGE_FORMAT_T format)
{
   vcos_assert(format != IMAGE_FORMAT_INVALID);

   switch (format & IMAGE_FORMAT_COMP_MASK) {
   case 129:
      switch (format & IMAGE_FORMAT_PIXEL_SIZE_MASK) {
         case 137: return 1;
         case 133: return 4;
         case 131: return 8;
         case 136: return 16;
         case 135: return 24;
         case 134: return 32;
         case 132: return 64;
         default: UNREACHABLE(); return 0;
      }
   case 130: return 4;
   case 128: return 16;
   default: UNREACHABLE(); return 0;
   }
}
