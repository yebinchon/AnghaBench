
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGL_EXTENSIONS ;
 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int EGL_READ ;
 int GL_BLEND ;
 int GL_EXTENSIONS ;
 int GL_MODELVIEW ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_PROJECTION ;
 int GL_RENDERER ;
 int GL_SRC_ALPHA ;
 int GL_TEXTURE ;
 int GL_VENDOR ;
 int GL_VERSION ;
 int eglGetCurrentContext () ;
 int eglGetCurrentDisplay () ;
 int eglGetCurrentSurface (int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglQueryString (int ,int ) ;
 int eglSwapInterval (int ,int ) ;
 int g_Context ;
 int g_Display ;
 int g_Surface ;
 int glBlendFunc (int ,int ) ;
 int glDisable (int ) ;
 int glGetString (int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glOrthof (int ,int,int,int ,int,int ) ;
 int yprintf (int ) ;

int Java_org_yabause_android_YabauseRunnable_initViewport()
{
   int error;
   char * buf;

   g_Display = eglGetCurrentDisplay();
   g_Surface = eglGetCurrentSurface(EGL_READ);
   g_Context = eglGetCurrentContext();

   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   glOrthof(0, 320, 224, 0, 1, 0);

   glMatrixMode(GL_MODELVIEW);
   glLoadIdentity();

   glMatrixMode(GL_TEXTURE);
   glLoadIdentity();

   glDisable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

   yprintf(glGetString(GL_VENDOR));
   yprintf(glGetString(GL_RENDERER));
   yprintf(glGetString(GL_VERSION));
   yprintf(glGetString(GL_EXTENSIONS));
   yprintf(eglQueryString(g_Display,EGL_EXTENSIONS));
   eglSwapInterval(g_Display,0);
   eglMakeCurrent(g_Display,EGL_NO_SURFACE,EGL_NO_SURFACE,EGL_NO_CONTEXT);
   return 0;
}
