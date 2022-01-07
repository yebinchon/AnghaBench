
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int display; int surface; int context; int texture; } ;
typedef TYPE_1__ VIDTEX_T ;


 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int eglDestroyContext (int ,int ) ;
 int eglDestroySurface (int ,int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglTerminate (int ) ;
 int glDeleteTextures (int,int *) ;
 int vidtex_destroy_images (TYPE_1__*) ;

__attribute__((used)) static void vidtex_gl_term(VIDTEX_T *vt)
{
   vidtex_destroy_images(vt);


   glDeleteTextures(1, &vt->texture);


   eglMakeCurrent(vt->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
   eglDestroyContext(vt->display, vt->context);
   eglDestroySurface(vt->display, vt->surface);
   eglTerminate(vt->display);
}
