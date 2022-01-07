
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_2__ {unsigned int width; unsigned int height; scalar_t__ native_window; int egl; } ;
typedef TYPE_1__ opendingux_ctx_data_t ;
typedef int EGLint ;




 int RARCH_ERR (char*,int ) ;
 int eglGetError () ;
 int egl_create_context (int *,int const*) ;
 int egl_create_surface (int *,scalar_t__) ;
 int egl_report_error () ;
 int gfx_ctx_opendingux_destroy (void*) ;

__attribute__((used)) static bool gfx_ctx_opendingux_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{






   opendingux_ctx_data_t *viv = (opendingux_ctx_data_t*)data;


   if (!width || !fullscreen)
      width = 1280;
   if (!height || !fullscreen)
      height = 1024;

   viv->width = width;
   viv->height = height;
   return 1;

error:



   gfx_ctx_opendingux_destroy(data);
   return 0;
}
