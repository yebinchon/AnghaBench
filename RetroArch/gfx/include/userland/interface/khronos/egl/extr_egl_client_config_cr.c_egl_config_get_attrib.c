
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
typedef int FEATURES_T ;
typedef int EGLint ;
 int EGL_CONFIG_MAX_HEIGHT ;
 int EGL_CONFIG_MAX_SWAP_INTERVAL ;
 int EGL_CONFIG_MAX_WIDTH ;
 int EGL_CONFIG_MIN_SWAP_INTERVAL ;


 int EGL_FORMAT_RGBA_8888_EXACT_KHR ;
 int EGL_FORMAT_RGB_565_EXACT_KHR ;


 int EGL_LOCK_SURFACE_BIT_KHR ;
 int EGL_MULTISAMPLE_RESOLVE_BOX_BIT ;



 int EGL_NONE ;
 int EGL_OPTIMAL_FORMAT_BIT_KHR ;
 int EGL_PBUFFER_BIT ;
 int EGL_PIXMAP_BIT ;



 int EGL_RGB_BUFFER ;




 int EGL_SWAP_BEHAVIOR_PRESERVED_BIT ;




 int EGL_TRUE ;
 int EGL_VG_ALPHA_FORMAT_PRE_BIT ;
 int EGL_VG_COLORSPACE_LINEAR_BIT ;
 int EGL_WINDOW_BIT ;
 int FEATURES_UNPACK_ALPHA (int ) ;
 int FEATURES_UNPACK_BLUE (int ) ;
 int FEATURES_UNPACK_COLOR (int ) ;
 int FEATURES_UNPACK_DEPTH (int ) ;
 int FEATURES_UNPACK_GREEN (int ) ;
 int FEATURES_UNPACK_MASK (int ) ;
 int FEATURES_UNPACK_MULTI (int ) ;
 int FEATURES_UNPACK_RED (int ) ;
 int FEATURES_UNPACK_STENCIL (int ) ;

 int UNREACHABLE () ;
 int bindable_rgb (int ) ;
 int bindable_rgba (int ) ;
 int egl_config_from_id (int) ;
 int egl_config_get_api_conformance (int) ;
 int egl_config_get_api_support (int) ;
 int egl_config_get_color_format (int) ;
 int egl_config_get_mapped_format (int) ;
 int egl_config_is_lockable (int) ;
 TYPE_1__* formats ;
 int platform_get_color_format (int ) ;

bool egl_config_get_attrib(int id, EGLint attrib, EGLint *value)
{
   FEATURES_T features = formats[id].features;

   switch (attrib) {
   case 158:
      *value = FEATURES_UNPACK_COLOR(features);
      return 1;
   case 138:
      *value = FEATURES_UNPACK_RED(features);
      return 1;
   case 152:
      *value = FEATURES_UNPACK_GREEN(features);
      return 1;
   case 159:
      *value = FEATURES_UNPACK_BLUE(features);
      return 1;
   case 150:
      *value = 0;
      return 1;
   case 162:
      *value = FEATURES_UNPACK_ALPHA(features);
      return 1;
   case 163:
      *value = FEATURES_UNPACK_MASK(features);
      return 1;
   case 161:
      *value = bindable_rgb(features);
      return 1;
   case 160:
      *value = bindable_rgba(features);
      return 1;
   case 157:
      *value = EGL_RGB_BUFFER;
      return 1;
   case 156:
      *value = EGL_NONE;
      return 1;
   case 155:
      *value = (EGLint)(uintptr_t)egl_config_from_id(id);
      return 1;
   case 154:
      *value = egl_config_get_api_conformance(id);
      return 1;
   case 153:
      *value = FEATURES_UNPACK_DEPTH(features);
      return 1;
   case 151:
      *value = 0;
      return 1;
   case 148:
      *value = 0;
      return 1;
   case 145:
      *value = EGL_CONFIG_MAX_WIDTH;
      return 1;
   case 147:
      *value = EGL_CONFIG_MAX_HEIGHT;
      return 1;
   case 146:
      *value = EGL_CONFIG_MAX_WIDTH * EGL_CONFIG_MAX_HEIGHT;
      return 1;
   case 144:
      *value = EGL_CONFIG_MAX_SWAP_INTERVAL;
      return 1;
   case 143:
      *value = EGL_CONFIG_MIN_SWAP_INTERVAL;
      return 1;
   case 142:
      *value = EGL_TRUE;
      return 1;
   case 141:
      *value = platform_get_color_format(egl_config_get_color_format(id));
      return 1;
   case 140:
      *value = EGL_NONE;
      return 1;
   case 137:
      *value = egl_config_get_api_support(id);
      return 1;
   case 135:
      *value = FEATURES_UNPACK_MULTI(features);
      return 1;
   case 136:
      *value = FEATURES_UNPACK_MULTI(features) * 4;
      return 1;
   case 134:
      *value = FEATURES_UNPACK_STENCIL(features);
      return 1;
   case 133:
      *value = (EGLint)(EGL_PBUFFER_BIT | EGL_PIXMAP_BIT | EGL_WINDOW_BIT | EGL_VG_COLORSPACE_LINEAR_BIT | EGL_VG_ALPHA_FORMAT_PRE_BIT | EGL_MULTISAMPLE_RESOLVE_BOX_BIT | EGL_SWAP_BEHAVIOR_PRESERVED_BIT);
      return 1;
   case 129:
      *value = EGL_NONE;
      return 1;
   case 130:
   case 131:
   case 132:
      *value = 0;
      return 1;
   default:
      return 0;
   }
}
