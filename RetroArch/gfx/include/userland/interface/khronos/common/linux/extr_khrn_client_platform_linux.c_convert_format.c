
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int KHRN_IMAGE_FORMAT_T ;


 int ABGR_8888 ;
 int A_8 ;




 int EGL_PIXEL_FORMAT_USAGE_MASK_BRCM ;

 int IMAGE_FORMAT_PRE ;
 int RGB_565 ;
 int XBGR_8888 ;
 int vcos_assert (int ) ;

__attribute__((used)) static KHRN_IMAGE_FORMAT_T convert_format(uint32_t format)
{
   switch (format & ~EGL_PIXEL_FORMAT_USAGE_MASK_BRCM) {
      case 131: return (KHRN_IMAGE_FORMAT_T)(ABGR_8888 | IMAGE_FORMAT_PRE);
      case 132: return ABGR_8888;
      case 128: return XBGR_8888;
      case 129: return RGB_565;
      case 130: return A_8;
      default:
         vcos_assert(0);
         return (KHRN_IMAGE_FORMAT_T)0;
   }
}
