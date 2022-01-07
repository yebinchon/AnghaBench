
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int display; int context; int surface; } ;
typedef int EGLImageKHR ;


 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int GL_COLOR_BUFFER_BIT ;
 int eglDestroyContext (int ,int ) ;
 int eglDestroyImageKHR (int ,int ) ;
 int eglDestroySurface (int ,int ) ;
 scalar_t__ eglImage ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglSwapBuffers (int ,int ) ;
 int eglTerminate (int ) ;
 int glClear (int ) ;
 int printf (char*) ;
 TYPE_1__* state ;

__attribute__((used)) static void exit_func(void)

{
   if (eglImage != 0)
   {
      if (!eglDestroyImageKHR(state->display, (EGLImageKHR) eglImage))
         printf("eglDestroyImageKHR failed.");
   }


   glClear( GL_COLOR_BUFFER_BIT );
   eglSwapBuffers(state->display, state->surface);


   eglMakeCurrent( state->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT );
   eglDestroySurface( state->display, state->surface );
   eglDestroyContext( state->display, state->context );
   eglTerminate( state->display );

   printf("\ncube closed\n");
}
