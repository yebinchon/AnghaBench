
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int WFCNativeStreamType ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ internal_handle; scalar_t__ serverbuffer; int win; } ;
typedef TYPE_1__ EGL_SURFACE_T ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int EGLINTDESTROYSURFACE_ID ;
 scalar_t__ PLATFORM_WIN_NONE ;
 int RPC_CALL1_RES (int ,int *,int ,int ) ;
 int RPC_INT_RES (int ) ;
 int RPC_UINT (scalar_t__) ;
 scalar_t__ WINDOW ;
 int eglIntDestroySurface_impl ;
 int egl_surface_pool_free (TYPE_1__*) ;
 int platform_destroy_winhandle (int ,scalar_t__) ;
 int vcos_log_trace (char*,...) ;
 int wfc_stream_destroy (int ) ;

void egl_surface_free(EGL_SURFACE_T *surface)
{
   CLIENT_THREAD_STATE_T *thread;

   vcos_log_trace("egl_surface_free");

   thread = CLIENT_GET_THREAD_STATE();

   if( surface->type == WINDOW ) {
      vcos_log_trace("egl_surface_free: calling platform_destroy_winhandle...");
      platform_destroy_winhandle( surface->win, surface->internal_handle );
   }




   vcos_log_trace("egl_surface_free: calling eglIntDestroySurface_impl via RPC...; "
      "thread = 0x%X; serverbuffer = 0x%X",
      (uint32_t) thread, (uint32_t) surface->serverbuffer);
   (void)RPC_INT_RES(RPC_CALL1_RES(eglIntDestroySurface_impl,
                                   thread,
                                   EGLINTDESTROYSURFACE_ID,
                                   RPC_UINT(surface->serverbuffer)));
   vcos_log_trace("egl_surface_free: calling egl_surface_pool_free...");
   egl_surface_pool_free(surface);

   vcos_log_trace("egl_surface_free: end");
}
