#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ internal_handle; scalar_t__ serverbuffer; int /*<<< orphan*/  win; } ;
typedef  TYPE_1__ EGL_SURFACE_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTDESTROYSURFACE_ID ; 
 scalar_t__ PLATFORM_WIN_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ WINDOW ; 
 int /*<<< orphan*/  eglIntDestroySurface_impl ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(EGL_SURFACE_T *surface)
{
   CLIENT_THREAD_STATE_T *thread;

   FUNC6("egl_surface_free");

   thread = FUNC0();

   if( surface->type == WINDOW ) {
      FUNC6("egl_surface_free: calling platform_destroy_winhandle...");
      FUNC5( surface->win, surface->internal_handle );
   }
   /* return value ignored -- read performed to ensure blocking. we want this to
    * block so clients can safely destroy the surface's window as soon as the
    * egl call that destroys the surface returns (usually eglDestroySurface, but
    * could be eg eglMakeCurrent) */
   FUNC6("egl_surface_free: calling eglIntDestroySurface_impl via RPC...; "
      "thread = 0x%X; serverbuffer = 0x%X",
      (uint32_t) thread, (uint32_t) surface->serverbuffer);
   (void)FUNC2(FUNC1(eglIntDestroySurface_impl,
                                   thread,
                                   EGLINTDESTROYSURFACE_ID,
                                   FUNC3(surface->serverbuffer)));

#ifdef KHRONOS_EGL_PLATFORM_OPENWFC
   if(surface->internal_handle != PLATFORM_WIN_NONE) // TODO what about pbuffers?
   {
      vcos_log_trace("egl_surface_free: calling wfc_stream_destroy...");
      wfc_stream_destroy((WFCNativeStreamType) surface->internal_handle);
   }
#endif

   FUNC6("egl_surface_free: calling egl_surface_pool_free...");
   FUNC4(surface);

   FUNC6("egl_surface_free: end");
}