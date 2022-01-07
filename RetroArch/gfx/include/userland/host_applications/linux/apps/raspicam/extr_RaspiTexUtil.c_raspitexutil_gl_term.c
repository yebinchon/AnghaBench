
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; int surface; int context; void* v_egl_image; int v_texture; void* u_egl_image; int u_texture; void* y_egl_image; int y_texture; void* egl_image; int texture; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int EGL_NO_CONTEXT ;
 void* EGL_NO_IMAGE_KHR ;
 int EGL_NO_SURFACE ;
 int VCOS_FUNCTION ;
 int eglDestroyContext (int ,int ) ;
 int eglDestroyImageKHR (int ,void*) ;
 int eglDestroySurface (int ,int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglTerminate (int ) ;
 int glDeleteTextures (int,int *) ;
 int vcos_log_trace (char*,int ) ;

void raspitexutil_gl_term(RASPITEX_STATE *raspitex_state)
{
   vcos_log_trace("%s", VCOS_FUNCTION);


   glDeleteTextures(1, &raspitex_state->texture);
   eglDestroyImageKHR(raspitex_state->display, raspitex_state->egl_image);
   raspitex_state->egl_image = EGL_NO_IMAGE_KHR;

   glDeleteTextures(1, &raspitex_state->y_texture);
   eglDestroyImageKHR(raspitex_state->display, raspitex_state->y_egl_image);
   raspitex_state->y_egl_image = EGL_NO_IMAGE_KHR;

   glDeleteTextures(1, &raspitex_state->u_texture);
   eglDestroyImageKHR(raspitex_state->display, raspitex_state->u_egl_image);
   raspitex_state->u_egl_image = EGL_NO_IMAGE_KHR;

   glDeleteTextures(1, &raspitex_state->v_texture);
   eglDestroyImageKHR(raspitex_state->display, raspitex_state->v_egl_image);
   raspitex_state->v_egl_image = EGL_NO_IMAGE_KHR;


   eglMakeCurrent(raspitex_state->display, EGL_NO_SURFACE,
                  EGL_NO_SURFACE, EGL_NO_CONTEXT);
   eglDestroyContext(raspitex_state->display, raspitex_state->context);
   eglDestroySurface(raspitex_state->display, raspitex_state->surface);
   eglTerminate(raspitex_state->display);
}
