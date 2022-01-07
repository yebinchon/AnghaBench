
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tex_buf3; int tex_buf2; int tex_buf1; int display; int context; int dispman_display; int dispman_element; int surface; int tex; } ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int GL_COLOR_BUFFER_BIT ;
 int assert (int) ;
 int eglDestroyContext (int ,int ) ;
 int eglDestroySurface (int ,int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglSwapBuffers (int ,int ) ;
 int eglTerminate (int ) ;
 int free (int ) ;
 int glClear (int ) ;
 int glDeleteTextures (int,int ) ;
 int printf (char*) ;
 TYPE_1__* state ;
 int vc_dispmanx_display_close (int ) ;
 int vc_dispmanx_element_remove (int ,int ) ;
 int vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (int ) ;

__attribute__((used)) static void exit_func(void)

{
   DISPMANX_UPDATE_HANDLE_T dispman_update;
   int s;

   glClear( GL_COLOR_BUFFER_BIT );
   eglSwapBuffers(state->display, state->surface);

   glDeleteTextures(6, state->tex);
   eglDestroySurface( state->display, state->surface );

   dispman_update = vc_dispmanx_update_start( 0 );
   s = vc_dispmanx_element_remove(dispman_update, state->dispman_element);
   assert(s == 0);
   vc_dispmanx_update_submit_sync( dispman_update );
   s = vc_dispmanx_display_close(state->dispman_display);
   assert (s == 0);


   eglMakeCurrent( state->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT );
   eglDestroyContext( state->display, state->context );
   eglTerminate( state->display );


   free(state->tex_buf1);
   free(state->tex_buf2);
   free(state->tex_buf3);

   printf("\ncube closed\n");
}
