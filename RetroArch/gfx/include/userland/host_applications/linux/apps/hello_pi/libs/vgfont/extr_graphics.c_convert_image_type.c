
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VGImageFormat ;
typedef int VCOS_STATUS_T ;
typedef int GRAPHICS_RESOURCE_TYPE_T ;





 int VCOS_EINVAL ;
 int VCOS_SUCCESS ;
 int VG_sARGB_8888 ;
 int VG_sRGBX_8888 ;
 int VG_sRGB_565 ;
 int vcos_assert (int ) ;

__attribute__((used)) static VCOS_STATUS_T convert_image_type(GRAPHICS_RESOURCE_TYPE_T image_type,
                                        VGImageFormat *vg_image_type,
                                        int *pbytes_per_pixel)
{
   int bytes_per_pixel;

   switch (image_type)
   {
   case 130:
      *vg_image_type = VG_sRGB_565;
      bytes_per_pixel = 2;
      break;
   case 129:
      *vg_image_type = VG_sRGBX_8888;
      bytes_per_pixel = 3;
      break;
   case 128:
      *vg_image_type = VG_sARGB_8888;
      bytes_per_pixel = 4;
      break;
   default:
      vcos_assert(0);
      *vg_image_type = 0;
      return VCOS_EINVAL;
   }
   if (pbytes_per_pixel)
      *pbytes_per_pixel = bytes_per_pixel;

   return VCOS_SUCCESS;
}
