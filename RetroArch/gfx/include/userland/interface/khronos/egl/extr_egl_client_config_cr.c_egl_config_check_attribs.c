
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KHRN_IMAGE_WRAP_T ;
typedef scalar_t__ EGLint ;
typedef int EGLNativePixmapType ;
 int EGL_LOCK_SURFACE_BIT_KHR ;
 scalar_t__ EGL_LUMINANCE_BUFFER ;
 int EGL_MULTISAMPLE_RESOLVE_BOX_BIT ;




 scalar_t__ EGL_NON_CONFORMANT_CONFIG ;
 scalar_t__ EGL_OPENGL_BIT ;
 scalar_t__ EGL_OPENGL_ES2_BIT ;
 scalar_t__ EGL_OPENGL_ES_BIT ;
 scalar_t__ EGL_OPENVG_BIT ;
 int EGL_OPTIMAL_FORMAT_BIT_KHR ;
 int EGL_PBUFFER_BIT ;
 int EGL_PIXMAP_BIT ;



 scalar_t__ EGL_RGB_BUFFER ;


 scalar_t__ EGL_SLOW_CONFIG ;


 int EGL_SWAP_BEHAVIOR_PRESERVED_BIT ;



 scalar_t__ EGL_TRANSPARENT_RGB ;


 int EGL_VG_ALPHA_FORMAT_PRE_BIT ;
 int EGL_VG_COLORSPACE_LINEAR_BIT ;
 int EGL_WINDOW_BIT ;
 int khrn_platform_release_pixmap_info (int ,int *) ;
 int platform_get_pixmap_info (int ,int *) ;

bool egl_config_check_attribs(const EGLint *attrib_list, bool *use_red, bool *use_green, bool *use_blue, bool *use_alpha)
{
   if (!attrib_list)
      return 1;

   while (*attrib_list != 140) {
      EGLint name = *attrib_list++;
      EGLint value = *attrib_list++;

      if (name == 138 && value != 0 && value != 159)
         *use_red = 1;

      if (name == 153 && value != 0 && value != 159)
         *use_green = 1;

      if (name == 166 && value != 0 && value != 159)
         *use_blue = 1;

      if (name == 169 && value != 0 && value != 159)
         *use_alpha = 1;

      switch (name) {
      case 165:
      case 138:
      case 153:
      case 166:
      case 151:
      case 169:
      case 170:
         if (value != 159 && value < 0) return 0;
         break;
      case 168:
      case 167:
         if (value != 159 && value != 158 && value != 128)
            return 0;
         break;
      case 164:
         if (value != 159 && value != EGL_RGB_BUFFER && value != EGL_LUMINANCE_BUFFER)
            return 0;
         break;
      case 163:
         if (value != 159 && value != 140 && value != EGL_SLOW_CONFIG && value != EGL_NON_CONFORMANT_CONFIG)
            return 0;
         break;
      case 162:
         if (value != 159 && value < 1)
            return 0;
         break;
      case 161:
         if (value != 159 && (value & ~(EGL_OPENGL_BIT|EGL_OPENGL_ES_BIT|EGL_OPENGL_ES2_BIT|EGL_OPENVG_BIT)))
            return 0;
         break;
      case 160:
         if (value != 159 && value < 0) return 0;
         break;
      case 152:
         break;
      case 149:





         if (value != 159) {
            KHRN_IMAGE_WRAP_T image;
            if (!platform_get_pixmap_info((EGLNativePixmapType)(intptr_t)value, &image))
               return 0;
            khrn_platform_release_pixmap_info((EGLNativePixmapType)(intptr_t)value, &image);
         }
         break;
      case 146:
      case 148:
      case 147:
         break;
      case 145:
      case 144:
         if (value != 159 && value < 0) return 0;
         break;
      case 143:
         if (value != 159 && value != 158 && value != 128)
            return 0;
         break;
      case 142:
      case 141:
         break;
      case 137:
         if (value != 159 && (value & ~(EGL_OPENGL_BIT|EGL_OPENGL_ES_BIT|EGL_OPENGL_ES2_BIT|EGL_OPENVG_BIT)))
            return 0;
         break;
      case 135:
      case 136:
      case 134:
         if (value != 159 && value < 0) return 0;
         break;
      case 133:
      {
         int valid_bits = EGL_WINDOW_BIT|EGL_PIXMAP_BIT|EGL_PBUFFER_BIT|
            EGL_MULTISAMPLE_RESOLVE_BOX_BIT|EGL_SWAP_BEHAVIOR_PRESERVED_BIT|
            EGL_VG_COLORSPACE_LINEAR_BIT|EGL_VG_ALPHA_FORMAT_PRE_BIT;



         if (value != 159 && (value & ~valid_bits))
            return 0;
         break;
      }
      case 129:
         if (value != 159 && value != 140 && value != EGL_TRANSPARENT_RGB)
            return 0;
         break;
      case 130:
      case 131:
      case 132:
         if (value != 159 && value < 0) return 0;
         break;
      default:
         return 0;
      }
   }

   return 1;
}
