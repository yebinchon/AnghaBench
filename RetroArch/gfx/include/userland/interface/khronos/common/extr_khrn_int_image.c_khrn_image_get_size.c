
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int KHRN_IMAGE_FORMAT_T ;


 int _max (int,int) ;
 int khrn_image_get_log2_brcm2_height (int ) ;
 int khrn_image_get_log2_brcm2_width (int ) ;
 int khrn_image_get_stride (int ,int) ;
 scalar_t__ khrn_image_is_brcm1 (int ) ;
 scalar_t__ khrn_image_is_brcm2 (int ) ;
 int khrn_image_pad_height (int ,int) ;

uint32_t khrn_image_get_size(KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height)
{
   uint32_t size = khrn_image_get_stride(format, width) * khrn_image_pad_height(format, height);
   return size;
}
