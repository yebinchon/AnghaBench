
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int KHRN_IMAGE_FORMAT_T ;





 int IMAGE_FORMAT_INVALID ;
 int IMAGE_FORMAT_MEM_LAYOUT_MASK ;

 int UNREACHABLE () ;
 int khrn_image_get_bpp (int) ;
 int khrn_image_get_log2_brcm1_width (int) ;
 int khrn_image_get_log2_brcm2_width (int) ;
 int round_up (int,int) ;
 int vcos_assert (int) ;

uint32_t khrn_image_pad_width(KHRN_IMAGE_FORMAT_T format, uint32_t width)
{
   vcos_assert(format != IMAGE_FORMAT_INVALID);

   switch (format & IMAGE_FORMAT_MEM_LAYOUT_MASK) {
   case 128:
      vcos_assert(!(khrn_image_get_bpp(format) & 7));
      return width;
   case 131: return round_up(width, (uint32_t) (1 << khrn_image_get_log2_brcm1_width(format)));
   case 130: return round_up(width, (uint32_t) (1 << khrn_image_get_log2_brcm2_width(format)));
   case 129: return round_up(width, 64);
   default: UNREACHABLE(); return 0;
   }
}
