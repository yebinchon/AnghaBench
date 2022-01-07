
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int buffers; } ;
typedef int EGLint ;
typedef TYPE_1__ EGL_SURFACE_T ;


 int EGL_BACK_BUFFER ;
 int EGL_NONE ;
 int EGL_SINGLE_BUFFER ;


 int UNREACHABLE () ;


EGLint egl_surface_get_render_buffer(EGL_SURFACE_T *surface)
{
   switch (surface->type) {
   case 128:
      if (surface->buffers == 1)
         return EGL_SINGLE_BUFFER;
      else
         return EGL_BACK_BUFFER;
   case 130:
      return EGL_BACK_BUFFER;
   case 129:
      return EGL_SINGLE_BUFFER;
   default:
      UNREACHABLE();
      return EGL_NONE;
   }
}
