
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int KHRN_IMAGE_FORMAT_T ;


 int khrn_image_get_bpp (int ) ;
 int khrn_image_pad_width (int ,int) ;

uint32_t khrn_image_get_stride(KHRN_IMAGE_FORMAT_T format, uint32_t width)
{
   return (khrn_image_pad_width(format, width) * khrn_image_get_bpp(format)) >> 3;
}
