
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int texture; int context; int surface; int display; } ;
typedef TYPE_1__ VIDTEX_T ;
typedef int EGLint ;
typedef int EGLNativeWindowType ;
typedef int EGLConfig ;


 int EGL_BLUE_SIZE ;
 int EGL_DEFAULT_DISPLAY ;
 int EGL_DEPTH_SIZE ;
 int EGL_GREEN_SIZE ;
 int EGL_NONE ;
 int EGL_RED_SIZE ;
 int GL_DITHER ;
 int GL_FLAT ;
 int GL_SCISSOR_TEST ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int eglChooseConfig (int ,int const*,int *,int,int*) ;
 int eglCreateContext (int ,int ,int *,int *) ;
 int eglCreateWindowSurface (int ,int ,int ,int *) ;
 int eglGetDisplay (int ) ;
 int eglInitialize (int ,int ,int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glGenTextures (int,int *) ;
 int glShadeModel (int ) ;
 int vidtex_gl_term (TYPE_1__*) ;

__attribute__((used)) static int vidtex_gl_init(VIDTEX_T *vt, EGLNativeWindowType win)
{
   const EGLint attribs[] =
   {
      EGL_RED_SIZE, 8,
      EGL_GREEN_SIZE, 8,
      EGL_BLUE_SIZE, 8,
      EGL_DEPTH_SIZE, 0,
      EGL_NONE
   };
   EGLConfig config;
   EGLint num_configs;

   vt->display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
   eglInitialize(vt->display, 0, 0);

   eglChooseConfig(vt->display, attribs, &config, 1, &num_configs);

   vt->surface = eglCreateWindowSurface(vt->display, config, win, ((void*)0));
   vt->context = eglCreateContext(vt->display, config, ((void*)0), ((void*)0));

   if (!eglMakeCurrent(vt->display, vt->surface, vt->surface, vt->context))
   {
      vidtex_gl_term(vt);
      return -1;
   }

   glGenTextures(1, &vt->texture);

   glShadeModel(GL_FLAT);
   glDisable(GL_DITHER);
   glDisable(GL_SCISSOR_TEST);
   glEnable(GL_TEXTURE_EXTERNAL_OES);
   glDisable(GL_TEXTURE_2D);

   return 0;
}
