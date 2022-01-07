
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int KHRN_IMAGE_FORMAT_T ;


 scalar_t__ khrn_image_get_log2_brcm2_width (int ) ;

uint32_t khrn_image_get_log2_brcm1_width(KHRN_IMAGE_FORMAT_T format)
{
   return khrn_image_get_log2_brcm2_width(format) + 3;
}
