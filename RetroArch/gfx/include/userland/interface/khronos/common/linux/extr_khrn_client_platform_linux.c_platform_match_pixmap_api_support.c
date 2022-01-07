
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ EGLNativePixmapType ;


 int EGL_OPENGL_BIT ;
 int EGL_OPENGL_ES2_BIT ;
 int EGL_OPENGL_ES_BIT ;
 int EGL_OPENVG_BIT ;
 int EGL_PIXEL_FORMAT_RENDER_GLES2_BRCM ;
 int EGL_PIXEL_FORMAT_RENDER_GLES_BRCM ;
 int EGL_PIXEL_FORMAT_RENDER_GL_BRCM ;
 int EGL_PIXEL_FORMAT_RENDER_VG_BRCM ;

bool platform_match_pixmap_api_support(EGLNativePixmapType pixmap, uint32_t api_support)
{
   return
      (!(api_support & EGL_OPENGL_BIT) || (((uint32_t *)pixmap)[4] & EGL_PIXEL_FORMAT_RENDER_GL_BRCM)) &&
      (!(api_support & EGL_OPENGL_ES_BIT) || (((uint32_t *)pixmap)[4] & EGL_PIXEL_FORMAT_RENDER_GLES_BRCM)) &&
      (!(api_support & EGL_OPENGL_ES2_BIT) || (((uint32_t *)pixmap)[4] & EGL_PIXEL_FORMAT_RENDER_GLES2_BRCM)) &&
      (!(api_support & EGL_OPENVG_BIT) || (((uint32_t *)pixmap)[4] & EGL_PIXEL_FORMAT_RENDER_VG_BRCM));
}
