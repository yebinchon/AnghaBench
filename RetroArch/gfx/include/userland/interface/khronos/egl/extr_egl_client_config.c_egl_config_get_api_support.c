
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int EGL_OPENGL_ES2_BIT ;
 int EGL_OPENGL_ES_BIT ;
 int EGL_OPENVG_BIT ;
 int egl_config_get_color_format (int) ;
 scalar_t__ egl_config_is_lockable (int) ;

uint32_t egl_config_get_api_support(int id)
{
   switch (egl_config_get_color_format(id)) {
   case 141: case 140: case 142:
   case 132: case 131: case 133:
   case 138: case 137: case 139:
   case 129: case 128: case 130:
   case 135: case 134: case 136:

      return (uint32_t)(EGL_OPENGL_ES_BIT | EGL_OPENVG_BIT | EGL_OPENGL_ES2_BIT);



   default:
      break;
   }
   return 0;
}
