
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; unsigned int height; int native_window; int egl; } ;
typedef TYPE_1__ vivante_ctx_data_t ;
typedef int video_frame_info_t ;
typedef int EGLint ;




 int RARCH_ERR (char*,int ) ;
 int eglGetError () ;
 int egl_create_context (int *,int const*) ;
 int egl_create_surface (int *,int ) ;
 int egl_report_error () ;
 int fbCreateWindow (int ,int ,int ,int ,int ) ;
 int fbGetDisplayByIndex (int ) ;
 int gfx_ctx_vivante_destroy (void*) ;

__attribute__((used)) static bool gfx_ctx_vivante_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{






   vivante_ctx_data_t *viv = (vivante_ctx_data_t*)data;


   if (!width || !fullscreen)
      width = 1280;
   if (!height || !fullscreen)
      height = 1024;

   viv->width = width;
   viv->height = height;
   viv->native_window = fbCreateWindow(fbGetDisplayByIndex(0), 0, 0, 0, 0);






   return 1;

error:
   RARCH_ERR("[Vivante fbdev]: EGL error: %d.\n", eglGetError());
   gfx_ctx_vivante_destroy(data);
   return 0;
}
