
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int largest_pbuffer; int mipmap_texture; int mipmap_level; int swap_behavior; int multisample_resolve; int texture_format; int texture_target; int width; int type; int config; int colorspace; int alphaformat; } ;
typedef int EGLint ;
typedef TYPE_1__ EGL_SURFACE_T ;
typedef int EGLBoolean ;



 int EGL_DISPLAY_SCALING ;
 int EGL_FALSE ;
 int EGL_TRUE ;
 int EGL_UNKNOWN ;


 int EGL_VG_ALPHA_FORMAT_NONPRE ;
 int EGL_VG_ALPHA_FORMAT_PRE ;

 int EGL_VG_COLORSPACE_LINEAR ;
 int EGL_VG_COLORSPACE_sRGB ;

 int NONPRE ;
 int PBUFFER ;
 int SRGB ;
 int egl_surface_get_render_buffer (TYPE_1__*) ;

EGLBoolean egl_surface_get_attrib(EGL_SURFACE_T *surface, EGLint attrib, EGLint *value)
{
   switch (attrib) {
   case 130:
      if (surface->alphaformat == NONPRE)
         *value = EGL_VG_ALPHA_FORMAT_NONPRE;
      else
         *value = EGL_VG_ALPHA_FORMAT_PRE;
      return EGL_TRUE;
   case 129:
      if (surface->colorspace == SRGB)
         *value = EGL_VG_COLORSPACE_sRGB;
      else
         *value = EGL_VG_COLORSPACE_LINEAR;
      return EGL_TRUE;
   case 143:
      *value = (EGLint)(size_t)surface->config;
      return EGL_TRUE;
   case 142:
      *value = surface->height;
      return EGL_TRUE;
   case 141:
   case 131:
      *value = EGL_UNKNOWN;
      return EGL_TRUE;
   case 140:

      if (surface->type == PBUFFER)
         *value = surface->largest_pbuffer;
      return EGL_TRUE;
   case 138:


      if (surface->type == PBUFFER)
         *value = surface->mipmap_texture;
      return EGL_TRUE;
   case 139:


      if (surface->type == PBUFFER)
         *value = surface->mipmap_level;
      return EGL_TRUE;
   case 136:
      *value = EGL_DISPLAY_SCALING;
      return EGL_TRUE;
   case 135:
      *value = egl_surface_get_render_buffer(surface);
      return EGL_TRUE;
   case 134:
      *value = surface->swap_behavior;
      return EGL_TRUE;
   case 137:
      *value = surface->multisample_resolve;
      return EGL_TRUE;
   case 133:


      if (surface->type == PBUFFER)
         *value = surface->texture_format;
      return EGL_TRUE;
   case 132:


      if (surface->type == PBUFFER)
         *value = surface->texture_target;
      return EGL_TRUE;
   case 128:
      *value = surface->width;
      return EGL_TRUE;
   default:
      return EGL_FALSE;
   }
}
