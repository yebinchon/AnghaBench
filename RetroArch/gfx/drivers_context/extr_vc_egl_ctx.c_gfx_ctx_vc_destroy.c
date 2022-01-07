
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ config; int * dpy; int * surf; int * hw_ctx; int * ctx; } ;
struct TYPE_4__ {int vsync_condition; int vsync_condition_mutex; int dispman_display; scalar_t__ vsync_callback_set; scalar_t__* vgimage; int ** eglBuffer; TYPE_1__ egl; int * pbuff_surf; int * eglimage_ctx; } ;
typedef TYPE_2__ vc_ctx_data_t ;


 int * EGL_NO_CONTEXT ;
 int * EGL_NO_SURFACE ;
 int EGL_OPENVG_API ;
 unsigned int MAX_EGLIMAGE_TEXTURES ;
 int eglBindAPI (int ) ;
 int eglDestroyContext (int *,int *) ;
 int eglDestroySurface (int *,int *) ;
 int eglMakeCurrent (int *,int *,int *,int *) ;
 int eglTerminate (int *) ;
 int g_egl_inited ;
 int gfx_ctx_vc_bind_api (void*,int ,int ,int ) ;
 int peglDestroyImageKHR (int *,int *) ;
 int scond_free (int ) ;
 int slock_free (int ) ;
 int vc_api ;
 int vc_dispmanx_vsync_callback (int ,int *,int *) ;
 int vgDestroyImage (scalar_t__) ;

__attribute__((used)) static void gfx_ctx_vc_destroy(void *data)
{
   vc_ctx_data_t *vc = (vc_ctx_data_t*)data;
   unsigned i;

   if (!vc)
   {
       g_egl_inited = 0;
       return;
   }

   if (vc->egl.dpy)
   {
      for (i = 0; i < MAX_EGLIMAGE_TEXTURES; i++)
      {
         if (vc->eglBuffer[i] && peglDestroyImageKHR)
         {
            eglBindAPI(EGL_OPENVG_API);
            eglMakeCurrent(vc->egl.dpy,
                  vc->pbuff_surf, vc->pbuff_surf, vc->eglimage_ctx);
            peglDestroyImageKHR(vc->egl.dpy, vc->eglBuffer[i]);
         }

         if (vc->vgimage[i])
         {
            eglBindAPI(EGL_OPENVG_API);
            eglMakeCurrent(vc->egl.dpy,
                  vc->pbuff_surf, vc->pbuff_surf, vc->eglimage_ctx);
            vgDestroyImage(vc->vgimage[i]);
         }
      }

      if (vc->egl.ctx)
      {
         gfx_ctx_vc_bind_api(data, vc_api, 0, 0);
         eglMakeCurrent(vc->egl.dpy,
               EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
         eglDestroyContext(vc->egl.dpy, vc->egl.ctx);
      }

      if (vc->egl.hw_ctx)
         eglDestroyContext(vc->egl.dpy, vc->egl.hw_ctx);

      if (vc->eglimage_ctx)
      {
         eglBindAPI(EGL_OPENVG_API);
         eglMakeCurrent(vc->egl.dpy,
               EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
         eglDestroyContext(vc->egl.dpy, vc->eglimage_ctx);
      }

      if (vc->egl.surf)
      {
         gfx_ctx_vc_bind_api(data, vc_api, 0, 0);
         eglDestroySurface(vc->egl.dpy, vc->egl.surf);
      }

      if (vc->pbuff_surf)
      {
         eglBindAPI(EGL_OPENVG_API);
         eglDestroySurface(vc->egl.dpy, vc->pbuff_surf);
      }

      eglBindAPI(EGL_OPENVG_API);
      eglMakeCurrent(vc->egl.dpy,
            EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
      gfx_ctx_vc_bind_api(data, vc_api, 0, 0);
      eglMakeCurrent(vc->egl.dpy,
            EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
      eglTerminate(vc->egl.dpy);
   }

   vc->egl.ctx = ((void*)0);
   vc->egl.hw_ctx = ((void*)0);
   vc->eglimage_ctx = ((void*)0);
   vc->egl.surf = ((void*)0);
   vc->pbuff_surf = ((void*)0);
   vc->egl.dpy = ((void*)0);
   vc->egl.config = 0;
   g_egl_inited = 0;

   for (i = 0; i < MAX_EGLIMAGE_TEXTURES; i++)
   {
      vc->eglBuffer[i] = ((void*)0);
      vc->vgimage[i] = 0;
   }



   if (vc->vsync_callback_set)
      vc_dispmanx_vsync_callback(vc->dispman_display, ((void*)0), ((void*)0));


   slock_free(vc->vsync_condition_mutex);
   scond_free(vc->vsync_condition);
}
