
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void vivante_ctx_data_t ;
typedef int video_frame_info_t ;
typedef int EGLint ;




 int EGL_DEFAULT_DISPLAY ;
 int RARCH_ERR (char*,int ) ;
 scalar_t__ calloc (int,int) ;
 int eglGetError () ;
 int egl_init_context (int *,int const,int ,int*,int*,int*,int const*,int *) ;
 int egl_report_error () ;
 int frontend_driver_install_signal_handler () ;
 int gfx_ctx_vivante_destroy (void*) ;
 int system (char*) ;

__attribute__((used)) static void *gfx_ctx_vivante_init(video_frame_info_t *video_info, void *video_driver)
{
   vivante_ctx_data_t *viv = (vivante_ctx_data_t*)calloc(1, sizeof(*viv));

   if (!viv)
       return ((void*)0);






   system("setterm -cursor off");
   return viv;

error:
   RARCH_ERR("[Vivante fbdev]: EGL error: %d.\n", eglGetError());
   gfx_ctx_vivante_destroy(viv);
   return ((void*)0);
}
