
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef void opendingux_ctx_data_t ;
typedef int EGLint ;




 int EGL_DEFAULT_DISPLAY ;
 int RARCH_ERR (char*,int ) ;
 scalar_t__ calloc (int,int) ;
 int eglGetError () ;
 int egl_init_context (int *,int const,int ,int*,int*,int*,int const*,int *) ;
 int egl_report_error () ;
 int frontend_driver_install_signal_handler () ;
 int gfx_ctx_opendingux_destroy (void*) ;

__attribute__((used)) static void *gfx_ctx_opendingux_init(video_frame_info_t *video_info, void *video_driver)
{
   opendingux_ctx_data_t *viv = (opendingux_ctx_data_t*)
      calloc(1, sizeof(*viv));

   if (!viv)
      return ((void*)0);
   return viv;

error:



   gfx_ctx_opendingux_destroy(viv);
   return ((void*)0);
}
