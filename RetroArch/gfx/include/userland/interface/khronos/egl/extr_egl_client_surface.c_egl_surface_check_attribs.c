
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ EGLint ;
typedef int EGLenum ;
typedef int EGL_SURFACE_TYPE_T ;


 int EGL_BACK_BUFFER ;
 int EGL_FALSE ;



 scalar_t__ const EGL_NONE ;
 int EGL_NO_TEXTURE ;

 int EGL_SINGLE_BUFFER ;
 int EGL_TEXTURE_2D ;

 int EGL_TEXTURE_RGB ;
 int EGL_TEXTURE_RGBA ;

 int EGL_TRUE ;

 int EGL_VG_ALPHA_FORMAT_NONPRE ;
 int EGL_VG_ALPHA_FORMAT_PRE ;

 int EGL_VG_COLORSPACE_LINEAR ;
 int EGL_VG_COLORSPACE_sRGB ;

 int PBUFFER ;
 int WINDOW ;

bool egl_surface_check_attribs(
   EGL_SURFACE_TYPE_T type,
   const EGLint *attrib_list,
   bool *linear,
   bool *premult,
   bool *single,
   int *width,
   int *height,
   bool *largest_pbuffer,
   EGLenum *texture_format,
   EGLenum *texture_target,
   bool *mipmap_texture
   )
{
   if (!attrib_list)
      return 1;

   while (*attrib_list != EGL_NONE) {
      int name = *attrib_list++;
      int value = *attrib_list++;

      switch (name) {
      case 129:
         if (value != EGL_VG_COLORSPACE_sRGB && value != EGL_VG_COLORSPACE_LINEAR)
            return 0;
         if (value == EGL_VG_COLORSPACE_LINEAR && linear != ((void*)0))
            *linear = 1;
         break;
      case 130:
         if (value != EGL_VG_ALPHA_FORMAT_NONPRE && value != EGL_VG_ALPHA_FORMAT_PRE)
            return 0;
         if (value == EGL_VG_ALPHA_FORMAT_PRE && premult != ((void*)0))
            *premult = 1;
         break;


      case 133:
         if (type != WINDOW || (value != EGL_SINGLE_BUFFER && value != EGL_BACK_BUFFER))
            return 0;
         if (value == EGL_SINGLE_BUFFER && single != ((void*)0))
            *single = 1;
         break;


      case 128:
         if (type != PBUFFER || value < 0)
            return 0;
         if (width != ((void*)0))
            *width = value;
         break;
      case 136:
         if (type != PBUFFER || value < 0)
            return 0;
         if (height != ((void*)0))
            *height = value;
         break;
      case 135:
         if (type != PBUFFER || (value != EGL_FALSE && value != EGL_TRUE))
            return 0;
         if (largest_pbuffer != ((void*)0))
            *largest_pbuffer = value;
         break;
      case 132:
         if (type != PBUFFER || (value != EGL_NO_TEXTURE && value != EGL_TEXTURE_RGB && value != EGL_TEXTURE_RGBA))
            return 0;
         if (texture_format != ((void*)0))
            *texture_format = value;
         break;
      case 131:
         if (type != PBUFFER || (value != EGL_NO_TEXTURE && value != EGL_TEXTURE_2D))
            return 0;
         if (texture_target != ((void*)0))
            *texture_target = value;
         break;
      case 134:
         if (type != PBUFFER || (value != EGL_FALSE && value != EGL_TRUE))
            return 0;
         if (mipmap_texture != ((void*)0))
            *mipmap_texture = value;
         break;
      default:
         return 0;
      }
   }

   return 1;
}
