
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KHRN_IMAGE_WRAP_T ;
typedef scalar_t__ EGLint ;
typedef int EGLNativePixmapType ;
 scalar_t__ EGL_DONT_CARE ;
 scalar_t__ EGL_FORMAT_RGBA_8888_EXACT_KHR ;
 scalar_t__ EGL_FORMAT_RGBA_8888_KHR ;
 scalar_t__ EGL_FORMAT_RGB_565_EXACT_KHR ;
 scalar_t__ EGL_FORMAT_RGB_565_KHR ;
 scalar_t__ const EGL_NONE ;
 int UNREACHABLE () ;
 int egl_config_get_api_support (int) ;
 int egl_config_get_attrib (int,scalar_t__,scalar_t__*) ;
 int egl_config_match_pixmap_info (int,int *) ;
 int khrn_platform_release_pixmap_info (int ,int *) ;
 int platform_get_pixmap_info (int ,int *) ;
 int platform_match_pixmap_api_support (int ,int ) ;

bool egl_config_filter(int id, const EGLint *attrib_list)
{
   if (!attrib_list)
      return 1;

   while (*attrib_list != EGL_NONE) {
      EGLint name = *attrib_list++;
      EGLint value = *attrib_list++;
      EGLint actual_value;

      if (!egl_config_get_attrib(id, name, &actual_value) )
      {
         UNREACHABLE();
         return 0;
      }

      switch (name) {

      case 157:
      case 137:
      case 151:
      case 158:
      case 149:
      case 161:
      case 162:
      case 152:
      case 134:
      case 135:
      case 133:
         if (value != EGL_DONT_CARE && value > actual_value)
            return 0;
         break;
      case 160:
      case 159:
      case 156:
      case 155:
      case 154:
      case 143:
      case 142:
      case 141:
      case 128:



         if (value != EGL_DONT_CARE && value != actual_value)
            return 0;
         break;

      case 150:
         if (value != actual_value)
            return 0;
         break;


      case 153:
      case 136:
      case 132:
         if (value != EGL_DONT_CARE && (value & ~actual_value))
            return 0;
         break;


      case 147:
         if (value != EGL_DONT_CARE) {
            EGLNativePixmapType pixmap = (EGLNativePixmapType)(intptr_t)value;
            KHRN_IMAGE_WRAP_T image;
            if (!platform_get_pixmap_info(pixmap, &image)) {





               UNREACHABLE();
               return 0;
            }
            if (!egl_config_match_pixmap_info(id, &image) ||
               !platform_match_pixmap_api_support(pixmap, egl_config_get_api_support(id)))
            {
               khrn_platform_release_pixmap_info(pixmap, &image);
               return 0;
            }

            khrn_platform_release_pixmap_info(pixmap, &image);
         }
         break;
      case 144:
      case 146:
      case 145:
      case 140:






      case 139:





      case 131:
      case 130:
      case 129:
         break;

      default:
         UNREACHABLE();
         break;
      }
   }

   return 1;
}
