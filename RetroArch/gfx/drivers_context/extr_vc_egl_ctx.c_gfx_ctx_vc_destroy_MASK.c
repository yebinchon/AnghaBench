#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ config; int /*<<< orphan*/ * dpy; int /*<<< orphan*/ * surf; int /*<<< orphan*/ * hw_ctx; int /*<<< orphan*/ * ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  vsync_condition; int /*<<< orphan*/  vsync_condition_mutex; int /*<<< orphan*/  dispman_display; scalar_t__ vsync_callback_set; scalar_t__* vgimage; int /*<<< orphan*/ ** eglBuffer; TYPE_1__ egl; int /*<<< orphan*/ * pbuff_surf; int /*<<< orphan*/ * eglimage_ctx; } ;
typedef  TYPE_2__ vc_ctx_data_t ;

/* Variables and functions */
 int /*<<< orphan*/ * EGL_NO_CONTEXT ; 
 int /*<<< orphan*/ * EGL_NO_SURFACE ; 
 int /*<<< orphan*/  EGL_OPENVG_API ; 
 unsigned int MAX_EGLIMAGE_TEXTURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int g_egl_inited ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vc_api ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(void *data)
{
   vc_ctx_data_t *vc = (vc_ctx_data_t*)data;
   unsigned i;

   if (!vc)
   {
       g_egl_inited = false;
       return;
   }

   if (vc->egl.dpy)
   {
      for (i = 0; i < MAX_EGLIMAGE_TEXTURES; i++)
      {
         if (vc->eglBuffer[i] && &peglDestroyImageKHR)
         {
            FUNC0(EGL_OPENVG_API);
            FUNC3(vc->egl.dpy,
                  vc->pbuff_surf, vc->pbuff_surf, vc->eglimage_ctx);
            FUNC6(vc->egl.dpy, vc->eglBuffer[i]);
         }

         if (vc->vgimage[i])
         {
            FUNC0(EGL_OPENVG_API);
            FUNC3(vc->egl.dpy,
                  vc->pbuff_surf, vc->pbuff_surf, vc->eglimage_ctx);
            FUNC10(vc->vgimage[i]);
         }
      }

      if (vc->egl.ctx)
      {
         FUNC5(data, vc_api, 0, 0);
         FUNC3(vc->egl.dpy,
               EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
         FUNC1(vc->egl.dpy, vc->egl.ctx);
      }

      if (vc->egl.hw_ctx)
         FUNC1(vc->egl.dpy, vc->egl.hw_ctx);

      if (vc->eglimage_ctx)
      {
         FUNC0(EGL_OPENVG_API);
         FUNC3(vc->egl.dpy,
               EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
         FUNC1(vc->egl.dpy, vc->eglimage_ctx);
      }

      if (vc->egl.surf)
      {
         FUNC5(data, vc_api, 0, 0);
         FUNC2(vc->egl.dpy, vc->egl.surf);
      }

      if (vc->pbuff_surf)
      {
         FUNC0(EGL_OPENVG_API);
         FUNC2(vc->egl.dpy, vc->pbuff_surf);
      }

      FUNC0(EGL_OPENVG_API);
      FUNC3(vc->egl.dpy,
            EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
      FUNC5(data, vc_api, 0, 0);
      FUNC3(vc->egl.dpy,
            EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
      FUNC4(vc->egl.dpy);
   }

   vc->egl.ctx      = NULL;
   vc->egl.hw_ctx   = NULL;
   vc->eglimage_ctx = NULL;
   vc->egl.surf     = NULL;
   vc->pbuff_surf   = NULL;
   vc->egl.dpy      = NULL;
   vc->egl.config   = 0;
   g_egl_inited     = false;

   for (i = 0; i < MAX_EGLIMAGE_TEXTURES; i++)
   {
      vc->eglBuffer[i] = NULL;
      vc->vgimage[i]   = 0;
   }

   /* Stop generating vsync callbacks if we are doing so.
    * Don't destroy the context while cbs are being generated! */
   if (vc->vsync_callback_set)
      FUNC9(vc->dispman_display, NULL, NULL);

   /* Destroy mutexes and conditions. */
   FUNC8(vc->vsync_condition_mutex);
   FUNC7(vc->vsync_condition);
}