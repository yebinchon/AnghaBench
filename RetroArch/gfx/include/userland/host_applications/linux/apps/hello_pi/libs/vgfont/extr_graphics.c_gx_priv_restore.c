
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int disp; } ;
struct TYPE_6__ {TYPE_1__* res; scalar_t__ context; scalar_t__ read_surface; scalar_t__ draw_surface; int api; } ;
struct TYPE_5__ {scalar_t__ context_bound; } ;
typedef TYPE_2__ GX_CLIENT_STATE_T ;
typedef int EGLBoolean ;


 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_SURFACE ;
 int GX_TRACE (char*,int ,int ,int ,int ,int ) ;
 TYPE_4__ display ;
 int eglBindAPI (int ) ;
 int eglMakeCurrent (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int lock ;
 int vcos_assert (int ) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_thread_current () ;
 int vcos_thread_get_name (int ) ;

void gx_priv_restore(GX_CLIENT_STATE_T *state)
{
   EGLBoolean egl_result;

   GX_TRACE("gx_priv_restore: eglMakeCurrent: %s, res %x draw_surface %x, surface %x, cxt %x", vcos_thread_get_name(vcos_thread_current()),
      (uint32_t)state->res, (uint32_t)state->draw_surface, (uint32_t)state->read_surface, (uint32_t)state->context);



   egl_result = eglMakeCurrent(display.disp, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
   vcos_assert(egl_result);


   egl_result = eglBindAPI(state->api);
   vcos_assert(egl_result);

   egl_result = eglMakeCurrent(display.disp, state->draw_surface, state->read_surface, state->context);
   vcos_assert(egl_result);

   if (state->res) state->res->context_bound = 0;

   vcos_mutex_unlock(&lock);
}
