
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int disp; } ;
struct TYPE_7__ {scalar_t__ magic; int context_bound; scalar_t__ context; scalar_t__ surface; } ;
struct TYPE_6__ {int api; TYPE_2__* res; void* draw_surface; void* read_surface; int context; } ;
typedef TYPE_1__ GX_CLIENT_STATE_T ;
typedef TYPE_2__* GRAPHICS_RESOURCE_HANDLE ;
typedef int EGLBoolean ;


 int EGL_DRAW ;
 int EGL_OPENVG_API ;
 int EGL_READ ;
 int GX_TRACE (char*,int ,int ,int ,int ) ;
 scalar_t__ RES_MAGIC ;
 TYPE_5__ display ;
 int eglBindAPI (int ) ;
 int eglGetCurrentContext () ;
 void* eglGetCurrentSurface (int ) ;
 int eglMakeCurrent (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int eglQueryAPI () ;
 int lock ;
 int vcos_assert (int) ;
 int vcos_mutex_lock (int *) ;
 int vcos_thread_current () ;
 int vcos_thread_get_name (int ) ;

void gx_priv_save(GX_CLIENT_STATE_T *state, GRAPHICS_RESOURCE_HANDLE res)
{
   EGLBoolean egl_result;
   vcos_assert(res == ((void*)0) || (res->magic == RES_MAGIC));
   vcos_assert(res == ((void*)0) || !res->context_bound);

   state->context = eglGetCurrentContext();
   state->api = eglQueryAPI();
   state->read_surface = eglGetCurrentSurface(EGL_READ);
   state->draw_surface = eglGetCurrentSurface(EGL_DRAW);
   state->res = res;

   vcos_assert(state->api);

   vcos_mutex_lock(&lock);

   egl_result = eglBindAPI(EGL_OPENVG_API);
   vcos_assert(egl_result);

   if (res)
   {
      GX_TRACE("gx_priv_save: eglMakeCurrent: %s, res %x surface %x, cxt %x", vcos_thread_get_name(vcos_thread_current()),
         (uint32_t)res, (uint32_t)res->surface, (uint32_t)res->context);

      egl_result = eglMakeCurrent(display.disp, res->surface,
                                  res->surface, res->context);
      vcos_assert(egl_result);

      res->context_bound = 1;
   }
}
